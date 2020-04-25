from PySide2.QtWidgets import QWidget, QFrame, QVBoxLayout, QHBoxLayout, QLineEdit, QLabel
from PySide2.QtGui import QColor
from PySide2.QtCore import Qt

from apollo_ui import ApolloIndicator
import usb_message as um


class SubRegister(QWidget):
    def __init__(self, parent, name, width, color, include_value=True):
        super().__init__(parent)
        self.indicators = []
        self.value = 0

        reg_layout = QVBoxLayout(self)
        self.setLayout(reg_layout)
        reg_layout.setSpacing(0)
        reg_layout.setContentsMargins(0, 0, 0, 0)

        if include_value:
            # Create a widget to hold the register's bits
            # Create a widget to hold the register's label and value textbox
            label_value = QWidget(self)
            lv_layout = QHBoxLayout(label_value)
            label_value.setLayout(lv_layout)
            lv_layout.setSpacing(1)
            lv_layout.setContentsMargins(0, 0, 0, 0)
            reg_layout.addWidget(label_value)
            reg_layout.addSpacing(1)

            # Create a label to show the register's name
            reg_label = QLabel(name, label_value)
            reg_label.setMinimumHeight(32)
            reg_label.setAlignment(Qt.AlignCenter | Qt.AlignVCenter)
            lv_layout.addWidget(reg_label)

            # Create a textbox to show the register's value in octal
            n_digits = int((width + 2) / 3)
            if n_digits == 1:
                value_width = 25
            elif n_digits == 2:
                value_width = 30
            else:
                value_width = 45

            self.value_box = QLineEdit(label_value)
            self.value_box.setMaximumSize(value_width, 32)
            self.value_box.setReadOnly(True)
            self.value_box.setAlignment(Qt.AlignCenter)
            self.value_box.setText(n_digits * '0')
            self.value_box.setStyleSheet("QLineEdit { color: #555; }")
            lv_layout.addWidget(self.value_box)

        # Create a frame to hold the register's bits
        bit_frame = QFrame(self)
        bit_layout = QHBoxLayout(bit_frame)
        bit_layout.setSpacing(1)
        bit_layout.setContentsMargins(1, 0, 2, 0)
        bit_frame.setLayout(bit_layout)
        bit_frame.setFrameStyle(QFrame.StyledPanel | QFrame.Plain)
        reg_layout.addWidget(bit_frame)
        reg_layout.setAlignment(bit_frame, Qt.AlignRight)

        # Add indicators for each bit in the register, from MSB to LSB
        for i in range(width, 0, -1):
            ind = ApolloIndicator(bit_frame, color)
            ind.setFixedSize(20, 32)
            bit_layout.addWidget(ind)
            self.indicators.insert(0, ind)

            # Add separators between each group of 3 bits
            if (i > 1) and ((i % 3) == 1):
                sep = QFrame(bit_frame)
                sep.setFrameStyle(QFrame.VLine | QFrame.Plain)
                sep.setStyleSheet("QFrame { color: #666; } ")
                bit_layout.addWidget(sep)



    def set_value(self, x):
        # Generic function to display in octal the value of a register, with the
        # appropriate number of digits
        self.value = x
        for i, ind in enumerate(self.indicators):
            ind.set_on((x & (1 << i)) != 0)

        fmt_string = '%%0%oo' % int((len(self.indicators) + 2) / 3)
        self.value_box.setText(fmt_string % x)


class Register(QWidget):
    def __init__(self, parent, usbif, name, has_parity, color):
        super().__init__(parent)
        self._has_parity = has_parity
        self._indicators = []
        self._parity_inds = []

        # Set up the UI
        self._setup_ui(name, color)

        # Set up register reading and updates
        self.msg = getattr(um, 'MonReg' + name)
        usbif.poll(self.msg())
        usbif.listen(self)

        if has_parity:
            usbif.poll(um.MonRegParity())
            self._gp = name.lower() + '_gp'
            self._sp = name.lower() + '_sp'
        else:
            self._gp = None
            self._sp = None

    def handle_msg(self, msg):
        if isinstance(msg, self.msg):
            self.set_value(msg[0])
        elif isinstance(msg, um.MonRegParity) and self._gp is not None:
            gp = getattr(msg, self._gp)
            sp = getattr(msg, self._sp)
            self._parity_inds[0].set_on(gp)
            self._parity_inds[1].set_on(sp)

    def set_value(self, x):
        # Toggle each of the 16 value indicators to match the new value
        for i in range(0, len(self._indicators)):
            self._indicators[i].set_on((x & (1 << i)) != 0)

        # Update the octal decoding of the indicators. Bit 15 is ignored
        # in the actual value, so mask it out and shift down bit 16.
        value = ((x & 0o100000) >> 1) | (x & 0o37777)
        self._value_box.setText('%05o' % value)

        # Instead we will convey overflow information with text color.
        # Positive overflow is red, and negative overflow is purple.
        sign1 = (x & 0o100000) != 0
        sign2 = (x & 0o040000) != 0
        if not sign1 and sign2:
            self._value_box.setStyleSheet('color: red;')
        elif sign1 and not sign2:
            self._value_box.setStyleSheet('color: purple;')
        else:
            self._value_box.setStyleSheet('color: #555;')

    def _setup_ui(self, name, color):
        # Set up the overall horizontal layout
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(3)
        layout.setMargin(1)

        # Construct a frame to hold the 16 indicators
        bit_frame = QFrame(self)
        bit_frame.setStyleSheet("QFrame { color: #666 }")
        bit_layout = QHBoxLayout(bit_frame)
        bit_layout.setSpacing(1)
        bit_layout.setContentsMargins(1, 0, 2, 0)
        bit_frame.setLayout(bit_layout)
        bit_frame.setFrameStyle(QFrame.Panel | QFrame.Plain)

        layout.addWidget(bit_frame)

        # Add sensed and generated parity bits, if this register has them
        if self._has_parity:
            for i in range(2, 0, -1):
                ind = ApolloIndicator(bit_frame, QColor(220, 240, 0))
                ind.setFixedSize(20, 32)
                bit_layout.addWidget(ind)
                self._parity_inds.insert(0, ind)

            sep = QFrame(bit_frame)
            sep.setFrameStyle(QFrame.VLine | QFrame.Plain)
            bit_layout.addWidget(sep)

        # Add the 16 bit indicators to the frame, from 16 to 1.
        for i in range(16, 0, -1):
            if(i == 15):
                indcolor = QColor(220, 240, 0)
            else:
                indcolor = color
            ind = ApolloIndicator(bit_frame, indcolor)
            ind.setFixedSize(20, 32)
            bit_layout.addWidget(ind)
            self._indicators.insert(0, ind)

            # Add separators between every group of 3 bits (except between
            # bits 15 and 16).
            if (i < 16) and (i > 1) and ((i % 3) == 1):
                sep = QFrame(bit_frame)
                sep.setFrameStyle(QFrame.VLine | QFrame.Plain)
                bit_layout.addWidget(sep)

        # Add a box to display the octal decoded value in
        self._value_box = QLineEdit(self)
        self._value_box.setMaximumSize(70, 32)
        #self._value_box.setMinimumWidth(100)
        self._value_box.setReadOnly(True)
        self._value_box.setAlignment(Qt.AlignCenter)
        self._value_box.setText('00000')
        self._value_box.setStyleSheet("QLineEdit { color: #555; }")
        layout.addWidget(self._value_box)

        # Add a label showing the name of the register
        label = QLabel(name, self)
        label.setMinimumWidth(20)
        layout.addWidget(label)

