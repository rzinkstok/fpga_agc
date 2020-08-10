import sys
from PySide2.QtWidgets import QApplication, QMainWindow, QLabel, QWidget, QVBoxLayout
from PySide2.QtGui import QFont, QFontInfo, QPalette, QColor
from PySide2.QtCore import Qt

import resources
from usb_interface import USBInterface
from dsky import DSKY
from lm import LM
from apollo_ui import ApolloGroup, ApolloLabeledSwitch
from monitor_window import MonitorWindow
import usb_message as um


class MainWindow(QMainWindow):
    def __init__(self, parent):
        super().__init__(parent)
        self._usbif = USBInterface()
        self._usbif.connected.connect(self.connected)

        # Retrieve the AGC version number
        self._usbif.listen(self)
        self._usbif.send(um.VersionMessage())

        self.monitor = MonitorWindow(self, self._usbif)
        self.dsky = DSKY(self, self._usbif)
        #self.lm = LM(self, self._usbif)
        self._setup_ui()

    def handle_msg(self, msg):
        if isinstance(msg, um.VersionMessage):
            self._status.setText(f"AGC VERSION {msg.version} CONNECTED")

    def _setup_ui(self):
        status_bar = self.statusBar()
        status_bar.setSizeGripEnabled(False)
        status_bar.setContentsMargins(4, 0, 0, 0)
        status_bar.setStyleSheet('QStatusBar::item {border: None;}')
        self._status = QLabel('STATUS')
        status_bar.addWidget(self._status)

        # Create a central widget, give it a layout, and set it up
        central = QWidget(self)
        self.setCentralWidget(central)
        layout = QVBoxLayout()
        layout.setMargin(10)
        central.setLayout(layout)

        ag = ApolloGroup(self, "INTERFACE")
        dsky_sw = ApolloLabeledSwitch(self, "DSKY")
        monitor_sw = ApolloLabeledSwitch(self, "MONITOR", labelwidth=62)
        fdai_sw = ApolloLabeledSwitch(self, "FDAI")

        dsky_sw.switch.setChecked(True)
        monitor_sw.switch.setChecked(True)
        fdai_sw.switch.setChecked(True)
        dsky_sw.switch.stateChanged.connect(self.toggle_dsky)
        monitor_sw.switch.stateChanged.connect(self.toggle_monitor)
        fdai_sw.switch.stateChanged.connect(self.toggle_fdai)

        ag.addWidget(dsky_sw)
        ag.addWidget(monitor_sw)
        ag.addWidget(fdai_sw)

        layout.addWidget(ag)
        layout.setAlignment(ag, Qt.AlignTop | Qt.AlignLeft)
        layout.addStretch()

    def toggle_dsky(self):
        if self.dsky.isVisible():
            self.dsky.hide()
            self._usbif.disable_source("dsky")
        else:
            self._usbif.enable_source("dsky")
            self.dsky.show()

    def toggle_monitor(self):
        if self.monitor.isVisible():
            self.monitor.hide()
            self._usbif.disable_source("monitor")
        else:
            self._usbif.enable_source("monitor")
            self.monitor.show()

    def toggle_fdai(self):
        if self.lm.isVisible():
            self.lm.hide()
        else:
            self.lm.show()

    def connected(self, connected):
        if connected:
            message = 'AGC CONNECTED'
        else:
            message = 'AGC DISCONNECTED'
        self._status.setText(message)

    def keyPressEvent(self, event):
        if event.key() == Qt.Key_Q:
            self.deleteLater()
        elif event.key() == Qt.Key_N:
            self._usbif.send(um.ControlProceed(1))

        event.accept()


if __name__ == '__main__':
    app = QApplication(sys.argv)

    # Apollo font style
    fontfamily = "Futura Std"
    fontsize = 10
    if sys.platform == "darwin":
        fontsize += 2
    elif sys.platform == "win32":
        fontfamily += " Medium"
    font = QFont(fontfamily)
    font.setBold(False)
    font.setPointSize(fontsize)
    fontinfo = QFontInfo(font)
    print("Selected font family:", fontinfo.family())
    print("Point size:", fontinfo.pointSize())
    app.setFont(font)

    # Apollo color palette
    app.setStyle("Fusion")
    palette = app.palette()
    basecolor = QColor("#888b8d")
    textcolor = QColor("#fff")
    palette.setColor(QPalette.WindowText, textcolor)
    palette.setColor(QPalette.Button, basecolor)
    #palette.setColor(QPalette.ButtonText, textcolor)
    palette.setColor(QPalette.Light, basecolor.lighter(150))
    palette.setColor(QPalette.Dark, basecolor.darker(150))
    palette.setColor(QPalette.Mid, basecolor)
    palette.setColor(QPalette.Text, basecolor.darker(250))
    #palette.setColor(QPalette.BrightText, textcolor)
    palette.setColor(QPalette.Base, basecolor.lighter(150))
    palette.setColor(QPalette.Window, basecolor)
    app.setPalette(palette)

    if sys.platform == "darwin":
        app.setStyleSheet(f"QLabel {{ font-size: 12px; font-family: {fontfamily}; }}")

    window = MainWindow(None)
    window.show()
    app.exec_()
