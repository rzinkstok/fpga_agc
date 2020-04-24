from PySide2.QtWidgets import QWidget, QFrame, QHBoxLayout, QVBoxLayout, QCheckBox, QLineEdit
from PySide2.QtCore import Qt


class SubComparator(QWidget):
    def __init__(self, parent, width, include_values=True, spacing=1):
        super().__init__(parent)
        self.width = width
        self.include_values = include_values
        self.spacing = spacing

        self._setup_ui()

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

            reg_value = QLineEdit(vw)
            reg_value.setMaximumSize(value_width, 32)
            reg_value.setMinimumHeight(32)
            reg_value.setText(n_digits * '0')
            reg_value.setAlignment(Qt.AlignCenter)
            #reg_value.setValidator(RegValidator(2 ** self.width - 1))
            reg_value.setMaxLength(n_digits)
            #reg_value.returnPressed.connect(lambda b=reg_value, s=cmp_switches: self._update_switches(b, s))
            vl.addWidget(reg_value)

            ign_value = QLineEdit(vw)
            ign_value.setMaximumSize(value_width, 32)
            ign_value.setText(n_digits * '0')
            ign_value.setAlignment(Qt.AlignCenter)
            #ign_value.setValidator(RegValidator(2 ** width - 1))
            ign_value.setMaxLength(n_digits)
            #ign_value.returnPressed.connect(lambda b=ign_value, s=ign_switches: self._update_switches(b, s))
            vl.addWidget(ign_value)

        # Switches
        ssf = QFrame(self)
        ssf.setFrameStyle(QFrame.Panel | QFrame.Plain)
        ssf.setStyleSheet('QCheckBox::indicator { subcontrol-position: center; }')

        ssl = QHBoxLayout()
        ssl.setSpacing(self.spacing)
        #ssl.setMargin(0)
        ssl.setContentsMargins(1, 0, 2, 0)
        ssf.setLayout(ssl)
        layout.addWidget(ssf)

        for i in range(self.width, 0, -1):
            sw = QWidget(ssf)
            sl = QVBoxLayout()
            sl.setSpacing(1)
            sl.setContentsMargins(0, 1, 0, 1)
            sw.setLayout(sl)

            s1 = QCheckBox(sw)
            s1.setFixedSize(20, 20)
            sl.addWidget(s1)
            sl.setAlignment(s1, Qt.AlignCenter)

            s2 = QCheckBox(sw)
            s2.setFixedSize(20, 20)
            sl.addWidget(s2)
            sl.setAlignment(s2, Qt.AlignCenter)

            ssl.addWidget(sw)

            # Add separators between each group of 3 bits
            if i in [17, 13, 10, 7, 4]:
            #if (i != 16) and (i > 1) and ((i % 3) == 1):
                sep = QFrame(ssf)
                sep.setFrameStyle(QFrame.VLine | QFrame.Plain)
                ssl.addWidget(sep)





