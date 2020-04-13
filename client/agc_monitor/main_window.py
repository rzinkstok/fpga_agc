import sys
from PySide2.QtWidgets import QApplication, QMainWindow, QLabel, QWidget, QHBoxLayout, QPushButton
from PySide2.QtGui import QFont, QFontInfo, QPalette, QColor
from PySide2.QtCore import Qt
from usb_interface import USBInterface

from monitor_panel import MonitorPanel
import usb_message as um


class MainWindow(QMainWindow):
    def __init__(self, parent):
        super().__init__(parent)
        self.setWindowTitle('AGC Monitor')

        self._usbif = USBInterface()
        self._usbif.connected.connect(self.connected)

        self.setup_ui()

    def setup_ui(self):
        status_bar = self.statusBar()
        status_bar.setSizeGripEnabled(False)
        status_bar.setContentsMargins(4, 0, 0, 0)
        status_bar.setStyleSheet('QStatusBar::item {border: None;}')
        self._status = QLabel('Test')
        status_bar.addWidget(self._status)

        # Create a central widget, give it a layout, and set it up
        central = QWidget(self)
        self.setCentralWidget(central)
        layout = QHBoxLayout(central)
        central.setLayout(layout)
        layout.setSpacing(0)
        layout.setMargin(0)

        self._monitor_panel = MonitorPanel(central, self._usbif)

        layout.addWidget(self._monitor_panel)

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
    #palette.setColor(QPalette.Button, basecolor)
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
