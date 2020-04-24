from PySide2.QtWidgets import QWidget, QVBoxLayout, QHBoxLayout, QLineEdit, QLabel
from PySide2.QtCore import Qt

from comparator import SubComparator


class SComparator(QWidget):
    def __init__(self, parent, num):
        super().__init__(parent)
        self.num = num
        self._setup_ui()

    def _setup_ui(self):
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(4)
        layout.setMargin(1)

        ebank = SubComparator(self, 3)
        layout.addWidget(ebank)

        fext = SubComparator(self, 3)
        layout.addWidget(fext)

        fbank = SubComparator(self, 5)
        layout.addWidget(fbank)

        s = SubComparator(self, 12)
        layout.addWidget(s)


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
        self._addr_value.setMinimumHeight(32)
        self._addr_value.setReadOnly(True)
        self._addr_value.setAlignment(Qt.AlignCenter)
        self._addr_value.setText('0000')
        self._addr_value.setStyleSheet("QLineEdit { color: #555; }")
        label_value_layout.addWidget(self._addr_value)

        # Create a label to show 'S'
        label = QLabel(f"S{self.num}", label_value_widget)
        label.setMinimumWidth(20)
        label_value_layout.addWidget(label)