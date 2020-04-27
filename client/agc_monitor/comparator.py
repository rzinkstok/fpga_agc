from PySide2.QtWidgets import QWidget, QFrame, QHBoxLayout, QVBoxLayout, QCheckBox, QLineEdit
from PySide2.QtCore import Qt

from reg_validator import OctalValidator


class SubComparator(QWidget):
    def __init__(self, parent, width, on_change=None, include_values=True, item_width=20, separators=True):
        super().__init__(parent)
        self.width = width
        self.on_change = on_change
        self.include_values = include_values
        self.item_width = item_width
        self.separators = separators

        self._reg_switches = []
        self._ign_switches = []

        self.updating_switches = False
        self._setup_ui()

    @property
    def reg_value(self):
        if self.include_values:
            text = self.reg_box.text()
            if text == '':
                return 0
            return int(text, 8)
        else:
            return self._get_switch_value(self._reg_switches)

    def set_reg_value(self, value):
        self._update_switches(value, self._reg_switches)
        if self.include_values:
            self._update_reg_box()

    @property
    def ign_value(self):
        if self.include_values:
            text = self.ign_box.text()
            if text == '':
                return 0
            return int(text, 8)
        else:
            return self._get_switch_value(self._ign_switches)

    def _setup_ui(self):
        self.setStyleSheet("QFrame { color: #666; }")
        layout = QVBoxLayout(self)
        self.setLayout(layout)
        layout.setMargin(0)
        layout.setSpacing(0)

        if self.include_values:
            # Value boxes
            vw = QWidget(self)
            vl = QHBoxLayout()
            vl.setSpacing(2)
            vl.setContentsMargins(0, 0, 0, 2)
            vw.setLayout(vl)
            layout.addWidget(vw)
            layout.setAlignment(vw, Qt.AlignRight)

            # Create textboxes to show the register's value and ignore mask in octal
            n_digits = int((self.width + 2) / 3)
            if n_digits == 1:
                value_width = 25
            elif n_digits == 2:
                value_width = 30
            else:
                value_width = 45

            self.reg_box = QLineEdit(vw)
            self.reg_box.setMaximumSize(value_width, 32)
            self.reg_box.setMinimumHeight(32)
            self.reg_box.setText(n_digits * '0')
            self.reg_box.setAlignment(Qt.AlignCenter)
            self.reg_box.setValidator(OctalValidator(2 ** self.width - 1))
            self.reg_box.setMaxLength(n_digits)
            self.reg_box.returnPressed.connect(self._update_reg_switches)
            vl.addWidget(self.reg_box)

            self.ign_box = QLineEdit(vw)
            self.ign_box.setMaximumSize(value_width, 32)
            self.ign_box.setText(n_digits * '0')
            self.ign_box.setAlignment(Qt.AlignCenter)
            self.ign_box.setValidator(OctalValidator(2 ** self.width - 1))
            self.ign_box.setMaxLength(n_digits)
            self.ign_box.returnPressed.connect(self._update_ign_switches)
            vl.addWidget(self.ign_box)

        # Switches
        ssf = QFrame(self)
        ssf.setFrameStyle(QFrame.Panel | QFrame.Plain)
        ssf.setStyleSheet('QCheckBox::indicator { subcontrol-position: center; }')

        ssl = QHBoxLayout()
        ssl.setSpacing(1)
        ssl.setContentsMargins(1, 0, 2, 0)
        ssf.setLayout(ssl)
        layout.addWidget(ssf)
        layout.setAlignment(ssf, Qt.AlignRight)

        for i in range(self.width, 0, -1):
            sw = QWidget(ssf)
            sl = QVBoxLayout()
            sl.setSpacing(1)
            sl.setContentsMargins(0, 1, 0, 1)
            sw.setLayout(sl)

            s1 = QCheckBox(sw)
            s1.setFixedSize(self.item_width, 20)
            sl.addWidget(s1)
            sl.setAlignment(s1, Qt.AlignCenter)
            s1.stateChanged.connect(self._update_reg_value)
            self._reg_switches.insert(0, s1)

            s2 = QCheckBox(sw)
            s2.setFixedSize(self.item_width, 20)
            sl.addWidget(s2)
            sl.setAlignment(s2, Qt.AlignCenter)
            s2.stateChanged.connect(self._update_ign_value)
            self._ign_switches.insert(0, s2)

            ssl.addWidget(sw)

            # Add separators between each group of 3 bits
            if self.separators and i in [17, 13, 10, 7, 4]:
                sep = QFrame(ssf)
                sep.setFrameStyle(QFrame.VLine | QFrame.Plain)
                ssl.addWidget(sep)

    def _get_switch_value(self, switches):
        val = 0
        for i, s in enumerate(switches):
            if s.isChecked():
                val |= (1 << i)
        return val

    def _update_reg_switches(self):
        self._update_switches(self.reg_value, self._reg_switches)

    def _update_ign_switches(self):
        self._update_switches(self.ign_value, self._ign_switches)

    def _update_switches(self, val, switches):
        self.updating_switches = True

        for i, s in enumerate(switches):
            s.setChecked((val & (1 << i)) != 0)

        self.updating_switches = False
        self._on_change()

    def _update_reg_value(self):
        if self.updating_switches:
            return
        if self.include_values:
            self._update_box(self.reg_box, self._reg_switches)
        self._on_change()

    def _update_ign_value(self):
        if self.updating_switches:
            return
        if self.include_values:
            self._update_box(self.ign_box, self._ign_switches)
        self._on_change()

    def _update_box(self, box, switches):
        val = self._get_switch_value(switches)
        max_length = box.maxLength()
        fmt = '%%0%uo' % max_length
        box.setText(fmt % val)

        if not self.updating_switches:
            self._on_change()

    def _on_change(self):
        if self.on_change is not None:
            self.on_change()

