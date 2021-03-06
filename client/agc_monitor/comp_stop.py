from PySide2.QtWidgets import QWidget, QHBoxLayout
from PySide2.QtGui import QColor
from collections import OrderedDict

from apollo_ui import ApolloGroup, ApolloLabeledIndicatorSwitch, ApolloLabeledRSwitch
import usb_message as um


STOP_CONDS = OrderedDict([
    ('T12', 't12'),
    ('NISQ', 'nisq'),
    ('S1', 's1'),
    ('S2', 's2'),
    ('W', 'w'),
    ('S&W', 's_w'),
    ('S&I', 's_i'),
    ('CHAN', 'chan'),
    ('PAR', 'par'),
    ('I', 'i'),
    ('PROG\nSTEP', 'prog_step'),
])


class CompStop(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif
        self._stop_switches = {}
        self._stop_inds = {}

        self._setup_ui()

        usbif.poll("monitor", um.ControlStopCause())
        usbif.listen(self)
        keys = [x for x in STOP_CONDS.values()] + ["s1_s2"]
        z = {k: 0 for k in keys}
        usbif.send(um.ControlStop(**z))

    def handle_msg(self, msg):
        if isinstance(msg, um.ControlStopCause):
            for v in STOP_CONDS.values():
                val = getattr(msg, v)
                self._stop_inds[v].set_on(val)

    def _set_stop_conds(self, on):
        settings = {s: int(self._stop_switches[s].isChecked()) for s in STOP_CONDS.values()}
        settings['s1_s2'] = int(self._s2.switch.isChecked())
        self._usbif.send(um.ControlStop(**settings))

    def _setup_ui(self):
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(20)

        ag1 = ApolloGroup(self, "STOP CONDITIONS")
        layout.addWidget(ag1)

        for label, name in STOP_CONDS.items():
            w = ApolloLabeledIndicatorSwitch(self, label, QColor(255, 120, 0), labelwidth=38, lines=2, callback=self._set_stop_conds, direct_connect=False)
            ag1.addWidget(w)
            self._stop_inds[name] = w.indicator
            self._stop_switches[name] = w.switch

        ag2 = ApolloGroup(self, "S SELECT")

        self._s1 = ApolloLabeledRSwitch(self, "S1", lines=2)
        self._s1.switch.setChecked(True)
        self._s1.switch.toggled.connect(self._set_stop_conds)
        ag2.addSpacing(5)
        ag2.addWidget(self._s1)
        ag2.addSpacing(10)
        self._s2 = ApolloLabeledRSwitch(self, "S2", lines=2)
        ag2.addWidget(self._s2)
        ag2.addSpacing(5)
        layout.addWidget(ag2)
        ag2.group()

