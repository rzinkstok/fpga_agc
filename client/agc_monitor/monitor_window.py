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
from read_load import ReadLoad
from fixed_memory import FixedMemory


class MonitorWindow(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self.setObjectName('#MONITOR')
        self.setWindowFlags(Qt.Window)
        self.setStyleSheet('DSKY{background-image: url(:/dsky.png);}')
        self.setWindowTitle('AGC Monitor')

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

        col2_layout.addSpacing(10)
        col2_layout.addStretch(1000)


        col3 = QWidget(self)
        col3_layout = QVBoxLayout(col3)
        col3_layout.setMargin(0)
        col3_layout.setSpacing(2)
        #col3_layout.addSpacing(10)
        column_layout.addWidget(col3)

        # Add the alarms panel
        self._alarms_panel = Alarms(col3, self._usbif)
        col3_layout.addWidget(self._alarms_panel)
        col3_layout.setAlignment(self._alarms_panel, Qt.AlignTop | Qt.AlignRight)

        # Add the control panel
        self._ctrl_panel = Control(col3, self._usbif)
        col3_layout.addWidget(self._ctrl_panel)
        col3_layout.setAlignment(self._ctrl_panel, Qt.AlignTop | Qt.AlignRight)

        # Add the computer stop panel
        self._comp_stop = CompStop(col3, self._usbif)
        col3_layout.addWidget(self._comp_stop)
        col3_layout.setAlignment(self._comp_stop, Qt.AlignTop | Qt.AlignRight)

        # Add the read/load panel
        self._read_load = ReadLoad(col3, self._usbif)
        col3_layout.addWidget(self._read_load)
        col3_layout.setAlignment(self._read_load, Qt.AlignTop | Qt.AlignRight)

        # Add the fixed memory panel
        self._fixed = FixedMemory(col3, self._usbif)
        col3_layout.addWidget(self._fixed)
        col3_layout.setAlignment(self._fixed, Qt.AlignTop | Qt.AlignRight)

        col3_layout.addStretch()

        self.show()
