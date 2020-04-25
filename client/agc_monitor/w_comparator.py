from PySide2.QtWidgets import QWidget, QFrame, QHBoxLayout, QGridLayout, QLineEdit, QCheckBox, QLabel
from PySide2.QtCore import Qt

from reg_validator import RegValidator
from comparator import SubComparator
import usb_message as um


class WComparator(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif

        self._setup_ui()

    def _setup_ui(self):
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(3)
        layout.setMargin(1)

        self.w = SubComparator(self, 18, include_values=False, on_change=self._update_value)
        layout.addWidget(self.w)

        # Create a value box for displaying the overall decoded valess
        self._val_box = QLineEdit(self)
        layout.addWidget(self._val_box)
        self._val_box.setMaximumSize(70, 32)
        self._val_box.setAlignment(Qt.AlignCenter)
        self._val_box.setText('00000')
        self._val_box.setStyleSheet("QLineEdit { color: #555; }")
        self._val_box.setValidator(RegValidator(0o77777))
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
        val = self.w.reg_value
        self._val_box.setText('%05o' % val)

        #if not self._updating_switches:
        self._send_cmp_val()

    # def _send_cmp_val(self):
    #     value = self._get_switch_value(self._w_compare_switches, False)
    #     self._usbif.send(um.ControlWComparatorValue(value))
    #
    # def _send_ign_val(self, state):
    #     ignore = self._get_switch_value(self._w_ignore_switches, False)
    #     self._usbif.send(um.ControlWComparatorIgnore(ignore))
    #
    # def _send_parity(self, state):
    #     parity = self._get_switch_value(self._parity_compare_switches, False)
    #     ignore = self._get_switch_value(self._parity_ignore_switches, False)
    #     self._usbif.send(um.ControlWComparatorParity(parity=parity, ignore=ignore))
    #
    # def _get_switch_value(self, switches, corrected):
    #     val = 0
    #     for i, s in enumerate(switches):
    #         bit = len(switches) - i - 1
    #         if corrected:
    #             if i == 0:
    #                 bit -= 1
    #             elif i == 1:
    #                 continue
    #         if s.isChecked():
    #             val |= (1 << bit)
    #
    #     return val
    #
    # def _update_cmp_switches(self):
    #     text = self._val_box.text()
    #     if text == '':
    #         val = 0
    #     else:
    #         val = int(text, 8)
    #
    #     self._updating_switches = True
    #
    #     for i, s in enumerate(self._w_compare_switches):
    #         bit = len(self._w_compare_switches) - i - 1
    #         if i == 0:
    #             bit -= 1
    #         s.setChecked((val & (1 << bit)) != 0)
    #
    #     self._updating_switches = False
    #     self._send_cmp_val()

    def _update_val_box(self, state):
        val = self._get_switch_value(self._w_compare_switches, True)
        self._val_box.setText('%05o' % val)

        if not self._updating_switches:
            self._send_cmp_val()
