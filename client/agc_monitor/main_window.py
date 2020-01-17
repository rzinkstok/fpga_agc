import sys
from PySide2.QtWidgets import QApplication, QMainWindow, QLabel, QWidget, QHBoxLayout, QPushButton
from PySide2.QtGui import QFont, QFontInfo, QPalette, QColor
from PySide2.QtCore import Qt
from usb_interface import USBInterface

from monitor_panel import MonitorPanel


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


if __name__ == '__main__':
    app = QApplication(sys.argv)
    font = QFont("Futura Std Medium")
    font.setBold(False)
    font.setPointSize(10)

    fontinfo = QFontInfo(font)
    print("Exact match:", fontinfo.exactMatch())
    print("Family:", fontinfo.family())
    print("Point size:", fontinfo.pointSize())
    print("Bold:", fontinfo.bold())
    print("Italic:", fontinfo.italic())
    print("Weight:", fontinfo.weight())
    print("Fixed pitch:", fontinfo.fixedPitch())

    app.setFont(font)

    palette = QPalette()
    palette.setColor(QPalette.Window, QColor("#888b8d"))
    palette.setColor(QPalette.WindowText, QColor("#fff"))
    palette.setColor(QPalette.Text, QColor("#fff"))
    palette.setColor(QPalette.ButtonText, QColor("#fff"))
    palette.setColor(QPalette.PlaceholderText, QColor("#fff"))
    palette.setColor(QPalette.ToolTipText, QColor("#fff"))
    palette.setColor(QPalette.HighlightedText, QColor("#fff"))
    palette.setColor(QPalette.BrightText, QColor("#fff"))
    app.setPalette(palette)

    window = MainWindow(None)
    window.show()
    app.exec_()
