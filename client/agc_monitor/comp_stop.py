from PySide2.QtWidgets import QWidget, QFrame, QLabel, QHBoxLayout, QVBoxLayout, QRadioButton
from PySide2.QtGui import QColor
from collections import OrderedDict

import usb_message as um
from apollo_group import ApolloGroup
from indicator import LabelIndicator


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


class CompStop(QFrame):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif
        self._stop_switches = {}
        self._stop_inds = {}

        self._setup_ui()

        usbif.poll(um.ControlStopCause())
        usbif.listen(self)
        keys = [x for x in STOP_CONDS.values()] + ["s1_s2"]
        z = {k: 0 for k in keys}
        usbif.send(um.ControlStop(**z))

    def handle_msg(self, msg):
        if isinstance(msg, um.ControlStopCause):
            for v in STOP_CONDS.values():
                self._stop_inds[v].set_on(getattr(msg, v))

    def _set_stop_conds(self, on):
        settings = {s: self._stop_switches[s].isChecked() for s in STOP_CONDS.values()}
        settings['s1_s2'] = self._s2.isChecked()
        self._usbif.send(um.ControlStop(**settings))

    def _setup_ui(self):
        layout = QHBoxLayout(self)
        self.setLayout(layout)

        layout.setSpacing(20)

        ag1 = ApolloGroup(self, "STOP CONDITIONS")
        layout.addWidget(ag1)

        for label, name in STOP_CONDS.items():
            w = LabelIndicator(self, QColor(255, 120, 0), label, lines=2, switch=True, callback=self._set_stop_conds, direct_connect=False)
            ag1.addWidget(w)
            self._stop_inds[name] = w._indicator
            self._stop_switches[name] = w.switch

        ag2 = ApolloGroup(self, "S SELECT")

        x1 = QWidget(self)
        l1 = QVBoxLayout(self)
        lbl1 = QLabel("\nS1")
        l1.addWidget(lbl1)
        self._s1 = QRadioButton(self)
        l1.addWidget(self._s1)
        self._s1.setChecked(True)
        self._s1.toggled.connect(self._set_stop_conds)
        x1.setLayout(l1)

        x2 = QWidget(self)
        l2 = QVBoxLayout(self)
        lbl2 = QLabel("\nS2")
        l2.addWidget(lbl2)
        self._s2 = QRadioButton(self)
        l2.addWidget(self._s2)
        x2.setLayout(l2)

        ag2.addWidget(x1)
        ag2.addWidget(x2)

        layout.addWidget(ag2)

