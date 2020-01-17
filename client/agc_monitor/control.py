from PySide2.QtWidgets import QWidget, QFrame, QGridLayout, QHBoxLayout, QVBoxLayout, QGroupBox, QLabel, QCheckBox
from PySide2.QtGui import QFont, QColor
from collections import OrderedDict

from indicator import LabelIndicator
from apollo_group import ApolloGroup
import usb_message as um


INH_SWITCHES = OrderedDict([
    ('RPT', um.WriteControlMNHRPT),
    ('INC', um.WriteControlMNHNC),
    ('ALG', um.WriteControlNHALGA),
    ('ST1', um.WriteControlSTRT1),
    ('ST2', um.WriteControlSTRT2),
])

STATUS_INDS = OrderedDict([
    ('gojam', 'GO\nJAM'),
    ('mon_stop', 'MON\nSTOP'),
    ('agc_run', 'AGC\nRUN'),
    ('crs_cycle', 'CRS\nCYCL')
])


class Control(QFrame):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif
        self._inh_switches = []
        self._inh_inds = []
        self._status_inds = {}
        self._setup_ui()

        # usbif.poll(um.ReadMonRegStatus())
        # usbif.poll(um.ReadControlStopCause())
        # usbif.poll(um.ReadStatusPeripheral())
        usbif.listen(self)

        for msg in INH_SWITCHES.values():
            usbif.send(msg(0))

    def handle_msg(self, msg):
        pass
        # if isinstance(msg, um.MonRegStatus):
        #    self._status_inds['gojam'].set_on(msg.gojam)
        #    self._status_inds['agc_run'].set_on(msg.run)
        # elif isinstance(msg, um.ControlStopCause):
        #    self._status_inds['mon_stop'].set_on(any(msg))
        # elif isinstance(msg, um.StatusPeripheral):
        #    self._status_inds['crs_cycle'].set_on(any(msg))

    def _setup_ui(self):
        self.setFrameStyle(QFrame.StyledPanel | QFrame.Raised)

        layout = QHBoxLayout(self)
        layout.setSpacing(20)
        self.setLayout(layout)

        ag1 = ApolloGroup(self, "INH")
        layout.addWidget(ag1)

        for label, msg in INH_SWITCHES.items():
            cb = lambda state, msg=msg: self._usbif.send(msg(int(bool(state))))
            w = LabelIndicator(self, QColor(255, 120, 0), label, lines=2, switch=True, callback=cb)
            ag1.addWidget(w)

        ag2 = ApolloGroup(self, "CONTROL")
        layout.addWidget(ag2)

        for name, label in STATUS_INDS.items():
            w = LabelIndicator(self, QColor(255, 120, 0), label, lines=2)
            ag2.addWidget(w)
