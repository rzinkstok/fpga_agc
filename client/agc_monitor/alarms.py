from PySide2.QtWidgets import QWidget, QHBoxLayout
from PySide2.QtGui import QColor
from collections import OrderedDict

from apollo_ui import ApolloGroup, ApolloLabeledIndicator, ApolloLabeledButton
import usb_message as um

ALARMS = OrderedDict([
    ('VFAIL', QColor(255, 0, 0)),
    ('OSCAL', QColor(255, 0, 0)),
    ('SCAFL', QColor(255, 0, 0)),
    ('SCDBL', QColor(255, 0, 0)),
    ('CTRAL', QColor(255, 127, 0)),
    ('TCAL', QColor(255, 127, 0)),
    ('RPTAL', QColor(255, 127, 0)),
    ('PAL', QColor(255, 127, 0)),
    ('FPAL', QColor(255, 127, 0)),
    ('EPAL', QColor(255, 127, 0)),
    ('WATCH', QColor(255, 127, 0)),
    ('PIPAL', QColor(180, 0, 255)),
    ('WARN', QColor(255, 255, 0)),
])


class Alarms(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif
        self._alarm_inds = {}

        self._setup_ui()

        usbif.poll(um.StatusAlarms())
        usbif.listen(self)

        self._reset_alarms()

    def handle_msg(self, msg):
        if isinstance(msg, um.StatusAlarms):
            for v in self._alarm_inds.keys():
                self._alarm_inds[v].set_on(getattr(msg, v))

    def _reset_alarms(self):
        z = {k.lower(): 1 for k in ALARMS.keys()}
        self._usbif.send(um.StatusAlarms(**z))

    def _setup_ui(self):
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(0)

        ag1 = ApolloGroup(self, "ALARMS")

        # Construct the alarm indicators
        for name, color in ALARMS.items():
            lw = 34
            if name == "WATCH":
                lw = 41
            if name == "OSCAL":
                lw = 37
            w = ApolloLabeledIndicator(self, name, color, labelwidth=lw)
            self._alarm_inds[name.lower()] = w.indicator
            ag1.addWidget(w)

        reset = ApolloLabeledButton(self, "RESET", callback=self._reset_alarms)
        ag1.addWidget(reset)

        layout.addWidget(ag1)

        #
        # check = QCheckBox(self)
        # check.setFixedSize(20, 20)
        # check.setStyleSheet('QCheckBox::indicator{subcontrol-position:center;}')
        # layout.addWidget(check, 2, 2)
        # layout.setAlignment(check, Qt.AlignCenter)
        # check.stateChanged.connect(lambda state: self._usbif.send(um.WriteControlDoscal(bool(state))))
        #
        # check = QCheckBox(self)
        # check.setFixedSize(20, 20)
        # check.setStyleSheet('QCheckBox::indicator{subcontrol-position:center;}')
        # layout.addWidget(check, 2, 3)
        # layout.setAlignment(check, Qt.AlignCenter)
        # check.stateChanged.connect(lambda state: self._usbif.send(um.WriteControlDbltst(bool(state))))
        #
        # b = QPushButton(self)
        # b.setFixedSize(20, 20)
        # b.pressed.connect(lambda: self._reset_alarms())
        # layout.addWidget(b, 2, 8, 1, 2)
        # layout.setAlignment(b, Qt.AlignCenter)

