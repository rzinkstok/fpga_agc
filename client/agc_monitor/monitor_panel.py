from PySide2.QtWidgets import QWidget, QFrame, QVBoxLayout, QHBoxLayout
from PySide2.QtCore import Qt
from PySide2.QtGui import QColor

from control import Control
from register import Register
from w_comparator import WComparator
from address_register import AddressRegister
from s_comparator import SComparator
from instruction_register import InstructionRegister
from i_comparator import IComparator
from comp_stop import CompStop
from write_w import WriteW
from alarms import Alarms


class MonitorPanel(QFrame):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif

        # Set up the UI
        self._setup_ui()

    def _setup_ui(self):
        column_layout = QHBoxLayout()
        self.setLayout(column_layout)
        column_layout.setMargin(0)
        column_layout.setSpacing(1)

        col1_layout = QVBoxLayout()
        col1_layout.setMargin(0)
        column_layout.addLayout(col1_layout)

        self._write_w = WriteW(self, self._usbif)
        col1_layout.addWidget(self._write_w)
        col1_layout.setAlignment(self._write_w, Qt.AlignTop | Qt.AlignLeft)

        col2_layout = QVBoxLayout()
        col2_layout.setMargin(0)
        col2_layout.setSpacing(2)
        col2_layout.addSpacing(10)
        column_layout.addLayout(col2_layout)

        regs_layout = QVBoxLayout()
        regs_layout.setSpacing(2)
        regs_layout.setMargin(0)
        col2_layout.addLayout(regs_layout)
        col2_layout.setAlignment(regs_layout, Qt.AlignTop)

        # Add all of the registers for display
        self._reg_a = Register(self, self._usbif, 'A', False, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_a)
        regs_layout.setAlignment(self._reg_a, Qt.AlignRight)

        self._reg_l = Register(self, self._usbif, 'L', False, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_l)
        regs_layout.setAlignment(self._reg_l, Qt.AlignRight)

        # self._reg_y = Register(regs, self._usbif, 'Y', False, QColor(0, 255, 0))
        # regs_layout.addWidget(self._reg_y)
        # regs_layout.setAlignment(self._reg_y, Qt.AlignRight)

        # self._reg_u = Register(regs, self._usbif, 'U', False, QColor(0, 255, 0))
        # regs_layout.addWidget(self._reg_u)
        # regs_layout.setAlignment(self._reg_u, Qt.AlignRight)

        self._reg_z = Register(self, self._usbif, 'Z', False, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_z)
        regs_layout.setAlignment(self._reg_z, Qt.AlignRight)

        # self._reg_q = Register(regs, self._usbif, 'Q', False, QColor(0, 255, 0))
        # regs_layout.addWidget(self._reg_q)
        # regs_layout.setAlignment(self._reg_q, Qt.AlignRight)

        self._reg_g = Register(self, self._usbif, 'G', True, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_g)
        regs_layout.setAlignment(self._reg_g, Qt.AlignRight)

        # self._reg_b = Register(regs, self._usbif, 'B', False, QColor(0, 255, 0))
        # regs_layout.addWidget(self._reg_b)
        # regs_layout.setAlignment(self._reg_b, Qt.AlignRight)

        self._reg_w = Register(self, self._usbif, 'W', True, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_w)
        regs_layout.setAlignment(self._reg_w, Qt.AlignRight)

        self._w_cmp = WComparator(self, self._usbif)
        regs_layout.addWidget(self._w_cmp)
        regs_layout.setAlignment(self._w_cmp, Qt.AlignRight)

        col2_layout.addSpacing(10)

        self._reg_s = AddressRegister(self, self._usbif, QColor(0, 255, 0))
        col2_layout.addWidget(self._reg_s)
        col2_layout.setAlignment(self._reg_s, Qt.AlignRight)

        self._s1_comp = SComparator(self, self._usbif, 1)
        col2_layout.addWidget(self._s1_comp)
        col2_layout.setAlignment(self._s1_comp, Qt.AlignRight)

        self._s2_comp = SComparator(self, self._usbif, 2)
        col2_layout.addWidget(self._s2_comp)
        col2_layout.setAlignment(self._s2_comp, Qt.AlignRight)

        col2_layout.addSpacing(10)

        self._reg_i = InstructionRegister(self, self._usbif, QColor(0, 255, 0))
        col2_layout.addWidget(self._reg_i)
        col2_layout.setAlignment(self._reg_i, Qt.AlignRight)

        self._i_comp = IComparator(self, self._usbif)
        col2_layout.addWidget(self._i_comp)
        col2_layout.setAlignment(self._i_comp, Qt.AlignRight)
        col2_layout.addStretch(1000)

        col3 = QWidget(self)
        col3_layout = QVBoxLayout(col3)
        col3_layout.setMargin(0)
        col3_layout.setSpacing(2)
        #col3_layout.addSpacing(10)
        column_layout.addWidget(col3)

        # Add the control panel
        self._ctrl_panel = Control(col3, self._usbif)
        col3_layout.addWidget(self._ctrl_panel)
        col3_layout.setAlignment(self._ctrl_panel, Qt.AlignTop | Qt.AlignRight)

        # Add the computer stop panel
        self._comp_stop = CompStop(col3, self._usbif)
        col3_layout.addWidget(self._comp_stop)
        col3_layout.setAlignment(self._comp_stop, Qt.AlignTop | Qt.AlignRight)

        # Add the alarms panel
        self._alarms_panel = Alarms(col3, self._usbif)
        col3_layout.addWidget(self._alarms_panel)
        col3_layout.setAlignment(self._alarms_panel, Qt.AlignTop | Qt.AlignRight)

        col3_layout.addStretch()

    def _setup_ui_old(self):
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

        self._write_w = WriteW(upper_displays, self._usbif)
        upper_layout.addWidget(self._write_w)
        upper_layout.setAlignment(self._write_w, Qt.AlignRight)

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

        #self._reg_y = Register(regs, self._usbif, 'Y', False, QColor(0, 255, 0))
        #regs_layout.addWidget(self._reg_y)
        #regs_layout.setAlignment(self._reg_y, Qt.AlignRight)

        #self._reg_u = Register(regs, self._usbif, 'U', False, QColor(0, 255, 0))
        #regs_layout.addWidget(self._reg_u)
        #regs_layout.setAlignment(self._reg_u, Qt.AlignRight)

        self._reg_z = Register(regs, self._usbif, 'Z', False, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_z)
        regs_layout.setAlignment(self._reg_z, Qt.AlignRight)

        #self._reg_q = Register(regs, self._usbif, 'Q', False, QColor(0, 255, 0))
        #regs_layout.addWidget(self._reg_q)
        #regs_layout.setAlignment(self._reg_q, Qt.AlignRight)

        self._reg_g = Register(regs, self._usbif, 'G', True, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_g)
        regs_layout.setAlignment(self._reg_g, Qt.AlignRight)

        #self._reg_b = Register(regs, self._usbif, 'B', False, QColor(0, 255, 0))
        #regs_layout.addWidget(self._reg_b)
        #regs_layout.setAlignment(self._reg_b, Qt.AlignRight)

        self._reg_w = Register(regs, self._usbif, 'W', True, QColor(0, 255, 0))
        regs_layout.addWidget(self._reg_w)
        regs_layout.setAlignment(self._reg_w, Qt.AlignRight)

        self._w_cmp = WComparator(regs, self._usbif)
        regs_layout.addWidget(self._w_cmp)
        regs_layout.setAlignment(self._w_cmp, Qt.AlignRight)

        layout.addSpacing(10)

        self._reg_s = AddressRegister(self, self._usbif, QColor(0, 255, 0))
        layout.addWidget(self._reg_s)
        layout.setAlignment(self._reg_s, Qt.AlignRight)

        self._s1_comp = SComparator(self, self._usbif, 1)
        layout.addWidget(self._s1_comp)
        layout.setAlignment(self._s1_comp, Qt.AlignRight)

        self._s2_comp = SComparator(self, self._usbif, 2)
        layout.addWidget(self._s2_comp)
        layout.setAlignment(self._s2_comp, Qt.AlignRight)

        layout.addSpacing(10)

        self._reg_i = InstructionRegister(self, self._usbif, QColor(0, 255, 0))
        layout.addWidget(self._reg_i)
        layout.setAlignment(self._reg_i, Qt.AlignRight)

        self._i_comp = IComparator(self, self._usbif)
        layout.addWidget(self._i_comp)
        layout.setAlignment(self._i_comp, Qt.AlignRight)

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

        # Add the computer stop panel
        self._comp_stop = CompStop(control_stop, self._usbif)
        control_stop_layout.addWidget(self._comp_stop)
        control_stop_layout.setAlignment(self._comp_stop, Qt.AlignRight)

        # Add the alarms panel
        self._alarms_panel = Alarms(self, self._usbif)
        layout.addWidget(self._alarms_panel)
        layout.setAlignment(self._alarms_panel, Qt.AlignRight)

