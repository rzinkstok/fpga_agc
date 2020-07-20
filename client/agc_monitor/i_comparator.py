from PySide2.QtWidgets import QWidget, QHBoxLayout, QLineEdit, QLabel
from PySide2.QtCore import Qt

from instruction_register import STATUS_INDS
from comparator import SubComparator
import usb_message as um
import agc


class IComparator(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif

        self._br = 0
        self._st = 0
        self._sqext = 0
        self._sq = 0

        self._br_ign = 0
        self._st_ign = 0
        self._sqext_ign = 0
        self._sq_ign = 0

        self._setup_ui()

    def _setup_ui(self):
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(3)
        layout.setMargin(1)

        self.br = SubComparator(self, 2, on_change=self._update_instruction)
        layout.addWidget(self.br)

        self.st = SubComparator(self, 3, on_change=self._update_instruction)
        layout.addWidget(self.st)

        self.sq = SubComparator(self, 7, on_change=self._update_instruction)
        layout.addWidget(self.sq)

        self.status = SubComparator(self, 7, on_change=self._update_status, include_values=False, item_width=35, separators=False)
        layout.addWidget(self.status)
        layout.setAlignment(self.status, Qt.AlignBottom)

        # Create a grouping widget for the I label and decoded octal value box
        label_value_layout = QHBoxLayout()
        label_value_layout.setSpacing(3)
        label_value_layout.setMargin(1)
        label_value_layout.setContentsMargins(0, 33, 0, 0)
        layout.addLayout(label_value_layout)

        # Create a value box for displaying the overall decoded address
        self._instr_value = QLineEdit(self)
        self._instr_value.setFixedSize(70, 32)
        self._instr_value.setReadOnly(True)
        self._instr_value.setAlignment(Qt.AlignCenter)
        self._instr_value.setText('TC0')
        self._instr_value.setStyleSheet("QLineEdit { color: #555; }")
        label_value_layout.addWidget(self._instr_value)

        # Create a label to show 'I'
        label = QLabel(f"I", self)
        label.setFixedWidth(20)
        label_value_layout.addWidget(label)

    def _update_instruction(self):
        br = self.br.reg_value
        st = self.st.reg_value
        sq = self.sq.reg_value
        sqext = (sq >> 6) & 0o1
        sq &= 0o77

        br_ign = self.br.ign_value
        st_ign = self.st.ign_value
        sq_ign = self.sq.ign_value
        sqext_ign = (sq_ign >> 6) & 0o1
        sq_ign &= 0o77

        if (self._br != br) or (self._st != st) or (self._sq != sq) or (self._sqext != sqext):
            self._br = br
            self._st = st
            self._sq = sq
            self._sqext = sqext
            msg = um.ControlICompVal(br=br, st=st, sqext=sqext, sq=sq)
            print(msg)
            self._usbif.send(msg)

        if (self._br_ign != br_ign) or (self._st_ign != st_ign) or (self._sq_ign != sq_ign) or (
                self._sqext_ign != sqext_ign):
            self._br_ign = br_ign
            self._st_ign = st_ign
            self._sq_ign = sq_ign
            self._sqext_ign = sqext_ign
            msg = um.ControlICompIgnore(br=br_ign, st=st_ign, sqext=sqext_ign, sq=sq_ign)
            print(msg)
            self._usbif.send(msg)

        self._instr_value.setText(agc.disassemble_subinst(sqext, sq, st))

    def _update_status(self):
        reg_states = [s.isChecked() for s in self.status._reg_switches]
        ign_states = [s.isChecked() for s in self.status._ign_switches]
        reg_keys = list(STATUS_INDS.keys())
        ign_keys = [k + "_ign" for k in reg_keys]
        status_reg = dict(zip(reg_keys, reversed(reg_states)))
        status_ign = dict(zip(ign_keys, reversed(ign_states)))
        status_bits = {**status_reg, **status_ign}
        msg = um.ControlICompStatus(**status_bits)
        print(msg)
        self._usbif.send(msg)