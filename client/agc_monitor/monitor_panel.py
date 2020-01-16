from PySide2.QtWidgets import QWidget, QFrame, QVBoxLayout, QHBoxLayout
from PySide2.QtCore import Qt

from control import Control


class MonitorPanel(QFrame):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif

        # Set up the UI
        self._setup_ui()

    def _setup_ui(self):
        self.setFrameStyle(QFrame.StyledPanel | QFrame.Raised)
        layout = QVBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(2)

        lower_controls = QWidget(self)
        lower_layout = QHBoxLayout(lower_controls)
        lower_controls.setLayout(lower_layout)
        lower_layout.setMargin(0)
        lower_layout.setSpacing(1)
        layout.addWidget(lower_controls)

        control_stop = QWidget(lower_controls)
        control_stop_layout = QVBoxLayout(control_stop)
        control_stop.setLayout(control_stop_layout)
        control_stop_layout.setSpacing(2)
        control_stop_layout.setMargin(0)
        lower_layout.addWidget(control_stop, Qt.AlignTop)

        # Add the control panel
        self._ctrl_panel = Control(control_stop, self._usbif)
        control_stop_layout.addWidget(self._ctrl_panel)
        control_stop_layout.setAlignment(self._ctrl_panel, Qt.AlignRight)
