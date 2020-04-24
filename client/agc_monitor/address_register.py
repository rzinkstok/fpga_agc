from PySide2.QtWidgets import QWidget, QHBoxLayout, QLineEdit, QLabel
from PySide2.QtCore import Qt

from register import SubRegister
import usb_message as um
import agc


class AddressRegister(QWidget):
    def __init__(self, parent, usbif, color):
        super().__init__(parent)
        self._setup_ui(color)

        usbif.poll(um.MonRegS())
        usbif.poll(um.MonRegBB())
        #usbif.poll(um.MonChanFEXT())

        usbif.listen(self)

    def handle_msg(self, msg):
        if isinstance(msg, um.MonRegS):
            self.set_s_value(msg.s)
        elif isinstance(msg, um.MonRegBB):
            self.set_bank_values(msg.eb, msg.fb)
        elif isinstance(msg, um.MonChanFEXT):
            self.set_fext_value(msg.fext)

    def set_bank_values(self, eb, fb):
        self.eb.set_value(eb)
        self.fb.set_value(fb)
        self._update_addr_value()

    def set_s_value(self, x):
        self.s.set_value(x)
        self._update_addr_value()

    def set_fext_value(self, x):
        self.fext.set_value(x)
        self._update_addr_value()

    def _setup_ui(self, color):
        # Set up our basic layout
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(3)
        layout.setMargin(1)

        # Construct register groups for EB, FEXT, FB, and S
        self.eb = SubRegister(self, "EBANK", 3, color)
        self.fext = SubRegister(self, "FEXT", 3, color)
        self.fb = SubRegister(self, "FBANK", 5, color)
        self.s = SubRegister(self, "", 12, color)
        layout.addWidget(self.eb)
        layout.addWidget(self.fext)
        layout.addWidget(self.fb)
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
        self._addr_value.setMaximumSize(52, 32)
        self._addr_value.setReadOnly(True)
        self._addr_value.setAlignment(Qt.AlignCenter)
        self._addr_value.setText('0000')
        self._addr_value.setStyleSheet("QLineEdit { color: #555; }")
        label_value_layout.addWidget(self._addr_value)

        # Create a label to show 'S'
        label = QLabel('S', label_value_widget)
        label.setMinimumWidth(20)
        label_value_layout.addWidget(label)

    def _update_addr_value(self):
        # Get the values of all tracked registers
        s = self.s.value
        eb = self.eb.value
        fb = self.fb.value
        fext = self.fext.value

        self._addr_value.setText(agc.format_addr(s, eb, fb, fext))
