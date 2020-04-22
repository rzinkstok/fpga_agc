from PySide2.QtWidgets import QFrame, QHBoxLayout
from PySide2.QtGui import QColor
from collections import OrderedDict

from apollo_ui import ApolloGroup, ApolloLabeledIndicator, ApolloLabeledIndicatorSwitch
import usb_message as um


INH_SWITCHES = OrderedDict([
    ('RPT', um.ControlMNHRPT),
    ('INC', um.ControlMNHNC),
    ('ALG', um.ControlNHALGA),
    ('ST1', um.ControlSTRT1),
    ('ST2', um.ControlSTRT2),
])

STATUS_INDS = OrderedDict([
    ('gojam', 'GO\nJAM'),
    ('mon_stop', 'MON\nSTOP'),
    ('agc_run', 'AGC\nRUN'),
    ('crs_cycle', 'CRS\nCYCL')
])

INSTRUCTION_STATUS_INDS = OrderedDict([
    ('iip', 'IIP'),
    ('inhl', 'INHL'),
    ('inkl', 'INKL'),
    ('ld', 'LD'),
    ('chld', 'CHLD'),
    ('rd', 'RD'),
    ('chrd', 'CHRD'),
])


class Control(QFrame):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif
        self._inh_switches = []
        self._inh_inds = []
        self._status_inds = {}
        self._instruction_status_inds = {}
        self._setup_ui()

        usbif.poll(um.ControlNHALGA())
        usbif.poll(um.ControlMNHRPT())

        usbif.poll(um.MonRegStatus())
        usbif.poll(um.ControlStopCause())
        # usbif.poll(um.StatusPeripheral())
        usbif.listen(self)

        for msg in INH_SWITCHES.values():
            usbif.send(msg(0))

    def handle_msg(self, msg):
        if isinstance(msg, um.MonRegStatus):
            self._status_inds['gojam'].indicator.set_on(msg.gojam)
            self._status_inds['agc_run'].indicator.set_on(msg.run)
            self._instruction_status_inds['iip'].indicator.set_on(msg.iip)
            self._instruction_status_inds['inhl'].indicator.set_on(msg.inhl)
            self._instruction_status_inds['inkl'].indicator.set_on(msg.inkl)
        elif isinstance(msg, um.ControlStopCause):
            self._status_inds['mon_stop'].indicator.set_on(any(msg))
        #elif isinstance(msg, um.StatusPeripheral):
        #    # self._status_inds['crs_cycle'].indicator.set_on(any(msg))
        #    self._instruction_status_inds['ld'].indicator.set_on(msg.ld)
        #    self._instruction_status_inds['chld'].indicator.set_on(msg.chld)
        #    self._instruction_status_inds['rd'].indicator.set_on(msg.rd)
        #    self._instruction_status_inds['chrd'].indicator.set_on(msg.chrd)

    def _setup_ui(self):
        layout = QHBoxLayout(self)
        layout.setSpacing(20)
        self.setLayout(layout)

        ag0 = ApolloGroup(self, "INSTRUCTION STATUS")
        layout.addWidget(ag0)
        for name, label in INSTRUCTION_STATUS_INDS.items():
            w = ApolloLabeledIndicator(self, label, QColor(0, 255, 255), lines=2)
            ag0.addWidget(w)
            self._instruction_status_inds[name] = w

        ag1 = ApolloGroup(self, "INH")
        layout.addWidget(ag1)

        for label, msg in INH_SWITCHES.items():
            callback = lambda state, msg=msg: self._usbif.send(msg(int(bool(state))))
            w = ApolloLabeledIndicatorSwitch(self, label, QColor(255, 120, 0), lines=2, callback=callback)
            ag1.addWidget(w)

        ag2 = ApolloGroup(self, "CONTROL")
        layout.addWidget(ag2)

        for name, label in STATUS_INDS.items():
            w = ApolloLabeledIndicator(self, label, QColor(255, 120, 0), lines=2)
            ag2.addWidget(w)
            self._status_inds[name] = w
