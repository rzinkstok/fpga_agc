from PySide2.QtWidgets import QWidget,QHBoxLayout, QLineEdit, QLabel
from PySide2.QtCore import Qt
from PySide2.QtGui import QColor
from collections import OrderedDict

from apollo_ui import ApolloLabeledIndicator
from register import SubRegister
import usb_message as um
import agc


STATUS_INDS = OrderedDict([
    ('iip', 'IIP'),
    ('inhl', 'INHL'),
    ('inkl', 'INKL'),
    ('ld', 'LD'),
    ('chld', 'CHLD'),
    ('rd', 'RD'),
    ('chrd', 'CHRD'),
])


class InstructionRegister(QWidget):
    def __init__(self, parent, usbif, color):
        super().__init__(parent)
        self._status_inds = {}
        self._setup_ui(color)

        usbif.poll("monitor", um.MonRegI())
        usbif.listen(self)

    def handle_msg(self, msg):
        if isinstance(msg, um.MonRegI):
            self.set_i_values(msg.br, msg.st, msg.sqext, msg.sq)
        elif isinstance(msg, um.MonRegStatus):
            self._status_inds['iip'].indicator.set_on(msg.iip)
            self._status_inds['inhl'].indicator.set_on(msg.inhl)
            self._status_inds['inkl'].indicator.set_on(msg.inkl)
        #elif isinstance(msg, um.StatusPeripheral):
        #    self._status_inds['ld'].indicator.set_on(msg.ld)
        #    self._status_inds['chld'].indicator.set_on(msg.chld)
        #    self._status_inds['rd'].indicator.set_on(msg.rd)
        #    self._status_inds['chrd'].indicator.set_on(msg.chrd)

    def set_i_values(self, br, st, sqext, sq):
        self.br.set_value(br)
        self.st.set_value(st)
        self.sq.set_value(sqext << 6 | sq )

        self._inst_value.setText(agc.disassemble_subinst(sqext, sq, st))

    def _setup_ui(self, color):
        # Set up our basic layout
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(3)
        layout.setMargin(1)

        # Construct register groups for BR, ST, and SQ
        self.br = SubRegister(self, "BR", 2, color)
        self.st = SubRegister(self, "ST", 3, color)
        self.sq = SubRegister(self, "SQ", 7, color)
        layout.addWidget(self.br)
        layout.addWidget(self.st)
        layout.addWidget(self.sq)

        # Status indicators
        wl = QHBoxLayout()
        wl.setSpacing(1)
        wl.setContentsMargins(2, 3, 3, 2)
        layout.addLayout(wl)

        for name, label in STATUS_INDS.items():
            w = ApolloLabeledIndicator(self, label, QColor(0, 255, 255), lines=2, labelwidth=35)
            wl.addWidget(w)
            self._status_inds[name] = w

        # Create a grouping widget for the I label and decoded instruction value box
        label_value_layout = QHBoxLayout()
        label_value_layout.setSpacing(3)
        label_value_layout.setContentsMargins(0, 33, 0, 0)
        layout.addLayout(label_value_layout)

        # Create a value box for displaying the overall decoded instruction
        self._inst_value = QLineEdit(self)
        self._inst_value.setFixedSize(70, 32)
        self._inst_value.setReadOnly(True)
        self._inst_value.setAlignment(Qt.AlignCenter)
        self._inst_value.setText('TC0')
        self._inst_value.setStyleSheet("QLineEdit { color: #555; }")
        label_value_layout.addWidget(self._inst_value)

        # Create a label to show 'I'
        label = QLabel('I', self)
        label.setFixedWidth(20)
        label_value_layout.addWidget(label)


