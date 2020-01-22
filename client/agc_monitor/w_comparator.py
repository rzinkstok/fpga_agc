from PySide2.QtWidgets import QWidget, QFrame, QHBoxLayout, QGridLayout, QLineEdit, QCheckBox, QLabel
from PySide2.QtGui import QFont
from PySide2.QtCore import Qt
from reg_validator import RegValidator
import usb_message as um


class WComparator(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif

        self._w_compare_switches = []
        self._w_ignore_switches = []
        self._parity_compare_switches = []
        self._parity_ignore_switches = []

        self._updating_switches = False

        self._setup_ui()

    def _setup_ui(self):
        # Set up our basic layout
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(3)
        layout.setMargin(1)

        bit_frame = QFrame(self)
        layout.addWidget(bit_frame)
        bit_layout = QGridLayout(bit_frame)
        bit_layout.setSpacing(1)
        bit_layout.setMargin(0)
        bit_frame.setLayout(bit_layout)
        bit_frame.setFrameStyle(QFrame.StyledPanel | QFrame.Plain)

        col = 1
        col = self._create_reg(bit_frame, bit_layout, col, 2, self._parity_compare_switches,
                               self._parity_ignore_switches, self._send_parity, self._send_parity)

        sep = QFrame(bit_frame)
        sep.setFrameStyle(QFrame.VLine | QFrame.Plain)
        sep.setStyleSheet("QFrame { color: #666; } ")
        bit_layout.addWidget(sep, 0, col, 2, 1)

        col = self._create_reg(bit_frame, bit_layout, col + 1, 16, self._w_compare_switches,
                               self._w_ignore_switches, self._update_val_box, self._send_ign_val)

        bit_layout.setColumnMinimumWidth(0, 2)
        bit_layout.setColumnMinimumWidth(col, 2)

        # Create a value box for displaying the overall decoded valess
        self._val_box = QLineEdit(self)
        layout.addWidget(self._val_box)
        self._val_box.setMaximumSize(52, 32)
        self._val_box.setText('00000')
        self._val_box.setStyleSheet("QLineEdit { color: #555; }")
        self._val_box.setValidator(RegValidator(0o77777))
        self._val_box.returnPressed.connect(self._update_cmp_switches)
        self._val_box.setAlignment(Qt.AlignCenter)

        # Add an empty label to align with the registers
        label = QLabel("", self)
        label.setMinimumWidth(15)
        layout.addWidget(label)

    def _send_cmp_val(self):
        value = self._get_switch_value(self._w_compare_switches, False)
        self._usbif.send(um.ControlWComparatorValue(value))

    def _send_ign_val(self, state):
        ignore = self._get_switch_value(self._w_ignore_switches, False)
        self._usbif.send(um.ControlWComparatorIgnore(ignore))

    def _send_parity(self, state):
        parity = self._get_switch_value(self._parity_compare_switches, False)
        ignore = self._get_switch_value(self._parity_ignore_switches, False)
        self._usbif.send(um.ControlWComparatorParity(parity=parity, ignore=ignore))

    def _get_switch_value(self, switches, corrected):
        val = 0
        for i, s in enumerate(switches):
            bit = len(switches) - i - 1
            if corrected:
                if i == 0:
                    bit -= 1
                elif i == 1:
                    continue
            if s.isChecked():
                val |= (1 << bit)

        return val

    def _update_cmp_switches(self):
        text = self._val_box.text()
        if text == '':
            val = 0
        else:
            val = int(text, 8)

        self._updating_switches = True

        for i, s in enumerate(self._w_compare_switches):
            bit = len(self._w_compare_switches) - i - 1
            if i == 0:
                bit -= 1
            s.setChecked((val & (1 << bit)) != 0)

        self._updating_switches = False
        self._send_cmp_val()

    def _update_val_box(self, state):
        val = self._get_switch_value(self._w_compare_switches, True)
        self._val_box.setText('%05o' % val)

        if not self._updating_switches:
            self._send_cmp_val()

    def _create_reg(self, frame, layout, col, width, compare_switches, ignore_switches, compare_fn, ignore_fn):
        # Add indicators for each bit in the register, from MSB to LSB
        for i in range(width, 0, -1):
            check = QCheckBox(frame)
            check.setFixedSize(20, 20)
            check.setStyleSheet('QCheckBox::indicator{ subcontrol-position:center; } QCheckBox { color: #666; }')
            check.stateChanged.connect(compare_fn)
            layout.addWidget(check, 0, col)
            layout.setAlignment(check, Qt.AlignCenter)
            compare_switches.append(check)

            check = QCheckBox(frame)
            check.setFixedSize(20, 20)
            check.setStyleSheet('QCheckBox::indicator{ subcontrol-position:center; } QCheckBox { color: #666; }')
            check.stateChanged.connect(ignore_fn)
            layout.addWidget(check, 1, col)
            layout.setAlignment(check, Qt.AlignCenter)
            ignore_switches.append(check)

            col += 1

            # Add separators between each group of 3 bits
            if (i < 16) and (i > 1) and ((i % 3) == 1):
                sep = QFrame(frame)
                sep.setFrameStyle(QFrame.VLine | QFrame.Plain)
                sep.setStyleSheet("QFrame { color: #666; } ")
                layout.addWidget(sep, 0, col, 2, 1)
                col += 1

        return col