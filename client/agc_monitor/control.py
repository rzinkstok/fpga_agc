from PySide2.QtWidgets import QWidget, QHBoxLayout
from PySide2.QtGui import QColor
from PySide2.QtCore import Qt
from collections import OrderedDict

from apollo_ui import ApolloGroup, ApolloLabeledIndicator, ApolloLabeledIndicatorSwitch
from measurements import Measurements
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


class Control(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif
        self._inh_switches = []
        self._inh_inds = []
        self._status_inds = {}
        self._setup_ui()

        usbif.poll("monitor", um.ControlNHALGA())
        usbif.poll("monitor", um.ControlMNHRPT())

        usbif.poll("monitor", um.MonRegStatus())
        usbif.poll("monitor", um.ControlStopCause())
        # usbif.poll("monitor", um.StatusPeripheral())
        usbif.listen(self)

        #for msg in INH_SWITCHES.values():
        #    usbif.send(msg(0))
        usbif.send(um.ControlSTRT1(0))
        usbif.send(um.ControlSTRT2(0))

    def handle_msg(self, msg):
        if isinstance(msg, um.MonRegStatus):
            self._status_inds['gojam'].indicator.set_on(msg.gojam)
            self._status_inds['agc_run'].indicator.set_on(msg.run)
        elif isinstance(msg, um.ControlStopCause):
            self._status_inds['mon_stop'].indicator.set_on(any(msg))
        #elif isinstance(msg, um.StatusPeripheral):
        #    self._status_inds['crs_cycle'].indicator.set_on(any(msg))

    def _setup_ui(self):
        layout = QHBoxLayout(self)
        layout.setSpacing(20)
        self.setLayout(layout)

        # Add the measurement panel
        self._measurement_panel = Measurements(self, self._usbif)
        layout.addWidget(self._measurement_panel)

        ag1 = ApolloGroup(self, "INHIBIT")
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
