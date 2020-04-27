from PySide2.QtWidgets import QWidget, QFrame, QHBoxLayout, QGridLayout, QLineEdit, QCheckBox, QLabel
from PySide2.QtCore import Qt

from reg_validator import OctalValidator
from comparator import SubComparator
import usb_message as um


class WComparator(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif

        self._w = 0
        self._w_ign = 0
        self._parity = 0
        self._parity_ign = 0

        self._setup_ui()

    def _setup_ui(self):
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(3)
        layout.setMargin(1)

        self.w = SubComparator(self, 18, include_values=False, on_change=self._update_value)
        layout.addWidget(self.w)

        # Create a value box for displaying the overall decoded values
        self._val_box = QLineEdit(self)
        layout.addWidget(self._val_box)
        self._val_box.setMaximumSize(70, 32)
        self._val_box.setAlignment(Qt.AlignCenter)
        self._val_box.setText('00000')
        self._val_box.setStyleSheet("QLineEdit { color: #555; }")
        self._val_box.setValidator(OctalValidator(0o77777))
        self._val_box.returnPressed.connect(self._update_switches)


        # Add an empty label to align with the registers
        label = QLabel("", self)
        label.setMinimumWidth(20)
        layout.addWidget(label)

    def _update_switches(self):
        text = self._val_box.text()
        val = 0
        if text != '':
            val = int(text, 8)
        self.w.set_reg_value(val)

    def _update_value(self):
        w = self.w.reg_value & 0x1FFFF
        w_ign = self.w.ign_value & 0x1FFFF
        parity = self.w.reg_value >> 16
        parity_ign = self.w.ign_value >> 16

        if w != self._w:
            self._w = w
            msg = um.ControlWComparatorValue(value=w)
            print(msg)
            self._usbif.send(msg)

        if w_ign != self._w_ign:
            self._w_ign = w_ign
            msg = um.ControlWComparatorIgnore(ignore=w_ign)
            print(msg)
            self._usbif.send(msg)

        if parity != self._parity or parity_ign != self._parity_ign:
            self._parity = parity
            self._parity_ign = parity_ign
            msg = um.ControlWComparatorParity(parity=parity, ignore=parity_ign)
            print(msg)
            self._usbif.send(msg)

        w_corrected = ((w & 0o100000) >> 1) | (w & 0o37777)  # | ((w & 0o40000) << 1)
        self._val_box.setText('%05o' % w_corrected)
