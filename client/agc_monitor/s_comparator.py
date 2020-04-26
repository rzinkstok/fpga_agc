from PySide2.QtWidgets import QWidget, QHBoxLayout, QLineEdit, QLabel
from PySide2.QtCore import Qt

from comparator import SubComparator
import usb_message as um
import agc


class SComparator(QWidget):
    def __init__(self, parent, usbif, num):
        super().__init__(parent)
        self._usbif = usbif

        self.num = num
        self._eb = 0
        self._eb_ign = 0
        self._fext = 0
        self._fext_ign = 0
        self._fb = 0
        self._fb_ign = 0
        self._s = 0
        self._s_ign = 0
        self._setup_ui()

        self._write_s_msg = getattr(um, f'ControlS{num}S')
        self._write_bank_msg = getattr(um, f'ControlS{num}Bank')
        self._write_s_ign_msg = getattr(um, f'ControlS{num}SIgnore')
        self._write_bank_ign_msg = getattr(um, f'ControlS{num}BankIgnore')

        usbif.send(self._write_s_msg(s=0))
        usbif.send(self._write_bank_msg(eb=0, fb=0, fext=0))
        usbif.send(self._write_s_ign_msg(s=0))
        usbif.send(self._write_bank_ign_msg(eb=0, fb=0, fext=0))

    def _setup_ui(self):
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(3)
        layout.setMargin(1)

        self.ebank = SubComparator(self, 3, on_change=self._update_address)
        layout.addWidget(self.ebank)

        self.fext = SubComparator(self, 3, on_change=self._update_address)
        layout.addWidget(self.fext)

        self.fbank = SubComparator(self, 5, on_change=self._update_address)
        layout.addWidget(self.fbank)

        self.s = SubComparator(self, 12, on_change=self._update_address)
        layout.addWidget(self.s)

        # Create a grouping widget for the S label and decoded octal value box
        label_value_widget = QWidget(self)
        label_value_layout = QHBoxLayout(label_value_widget)
        label_value_layout.setSpacing(3)
        label_value_layout.setMargin(1)
        label_value_layout.setContentsMargins(0, 33, 0, 0)
        label_value_widget.setLayout(label_value_layout)
        layout.addWidget(label_value_widget)

        # Create a value box for displaying the overall decoded address
        self._addr_value = QLineEdit(label_value_widget)
        label_value_layout.addWidget(self._addr_value)
        self._addr_value.setMaximumSize(70, 32)
        self._addr_value.setMinimumHeight(32)
        self._addr_value.setReadOnly(True)
        self._addr_value.setAlignment(Qt.AlignCenter)
        self._addr_value.setText('0000')
        self._addr_value.setStyleSheet("QLineEdit { color: #555; }")


        # Create a label to show 'S'
        label = QLabel(f"S{self.num}", label_value_widget)
        label.setMinimumWidth(20)
        label_value_layout.addWidget(label)

    def _update_address(self):
        eb = self.ebank.reg_value
        fext = self.fext.reg_value
        fb = self.fbank.reg_value
        s = self.s.reg_value

        eb_ign = self.ebank.ign_value
        fext_ign = self.fext.ign_value
        fb_ign = self.fbank.ign_value
        s_ign = self.s.ign_value

        if self._s != s:
            self._s = s
            msg = self._write_s_msg(s=s)
            print(msg)
            self._usbif.send(msg)

        if (self._eb != eb) or (self._fb != fb) or (self._fext != fext):
            self._eb = eb
            self._fext = fext
            self._fb = fb
            self._usbif.send(self._write_bank_msg(eb=eb, fext=fext, fb=fb))

        if self._s_ign != s_ign:
            self._s_ign = s_ign
            msg = self._write_s_ign_msg(s=s_ign)
            print(msg)
            self._usbif.send(msg)

        if (self._eb_ign != eb_ign) or (self._fb_ign != fb_ign) or (self._fext_ign != fext_ign):
            self._eb_ign = eb_ign
            self._fext_ign = fext_ign
            self._fb_ign = fb_ign
            msg = self._write_bank_ign_msg(eb=eb_ign, fext=fext_ign, fb=fb_ign)
            print (msg)
            self._usbif.send(msg)

        self._addr_value.setText(agc.format_addr(s, eb, fb, fext))