from PySide2.QtWidgets import QWidget, QFrame, QVBoxLayout, QHBoxLayout, QPushButton
from PySide2.QtCore import Qt
from PySide2.QtGui import QColor

from control import Control
from register import Register
from w_comparator import WComparator
from address_register import AddressRegister


class MonitorPanel(QFrame):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif

        # Set up the UI
        self._setup_ui()

    def _setup_ui(self):
        layout = QVBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(2)

        # Create a horizontal widget to hold the Write W settings on the left, and
        # the computer register displays on the right
        upper_displays = QWidget(self)
        upper_layout = QHBoxLayout(upper_displays)
        upper_displays.setLayout(upper_layout)
        upper_layout.setMargin(0)
        upper_layout.setSpacing(1)
        layout.addWidget(upper_displays)

        # self._write_w = WriteW(upper_displays, self._usbif)
        # upper_layout.addWidget(self._write_w)
        # upper_layout.setAlignment(self._write_w, Qt.AlignRight)

        regs = QWidget(upper_displays)
        regs_layout = QVBoxLayout(regs)
        regs.setLayout(regs_layout)
        regs_layout.setSpacing(2)
        regs_layout.setMargin(0)
        regs_layout.addSpacing(25)
        upper_layout.addWidget(regs)
        upper_layout.setAlignment(regs, Qt.AlignTop)

        # Add all of the registers for display
        self._reg_a = Register(regs, self._usbif, 'A', False, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_a)
        regs_layout.setAlignment(self._reg_a, Qt.AlignRight)

        self._reg_l = Register(regs, self._usbif, 'L', False, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_l)
        regs_layout.setAlignment(self._reg_l, Qt.AlignRight)

        self._reg_z = Register(regs, self._usbif, 'Z', False, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_z)
        regs_layout.setAlignment(self._reg_z, Qt.AlignRight)

        self._reg_g = Register(regs, self._usbif, 'G', True, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_g)
        regs_layout.setAlignment(self._reg_g, Qt.AlignRight)

        self._reg_w = Register(regs, self._usbif, 'W', True, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_w)
        regs_layout.setAlignment(self._reg_w, Qt.AlignRight)

        self._w_cmp = WComparator(regs, self._usbif)
        regs_layout.addWidget(self._w_cmp)
        regs_layout.setAlignment(self._w_cmp, Qt.AlignRight)

        self._reg_s = AddressRegister(self, self._usbif, QColor(0, 255, 0))
        layout.addWidget(self._reg_s)
        layout.setAlignment(self._reg_s, Qt.AlignRight)

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
