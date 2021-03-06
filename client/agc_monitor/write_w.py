from PySide2.QtWidgets import QWidget, QHBoxLayout, QVBoxLayout
from collections import OrderedDict

from apollo_ui import ApolloGroup, ApolloLabeledSwitch, ApolloLabeledRSwitch
import usb_message as um


WRITE_W_POSITIONS = OrderedDict([
    ('ALL', um.WriteWMode.ALL),
    ('S', um.WriteWMode.S),
    ('I', um.WriteWMode.I),
    ('S&I', um.WriteWMode.S_I),
    ('P', um.WriteWMode.P),
    ('P&I', um.WriteWMode.P_I),
    ('P&S', um.WriteWMode.P_S),
])

TIME_SWITCHES = OrderedDict([
    ('t01', 'T1'),
    ('t02', 'T2'),
    ('t03', 'T3'),
    ('t04', 'T4'),
    ('t05', 'T5'),
    ('t06', 'T6'),
    ('t07', 'T7'),
    ('t08', 'T8'),
    ('t09', 'T9'),
    ('t10', 'T10'),
    ('t11', 'T11'),
    ('t12', 'T12'),
])

PULSE_SWITCHES = OrderedDict([
    ('a', 'A'),
    ('l', 'L'),
    ('q', 'Q'),
    ('z', 'Z'),
    ('rch', 'RCH'),
    ('wch', 'WCH'),
    ('g', 'G'),
    ('b', 'B'),
    ('y', 'Y'),
    ('ru', 'RU'),
    ('sp1', ''),
    ('sp2', ''),
])


class WriteW(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif
        self._time_switches = {}
        self._pulse_switches = {}
        self._mode = WRITE_W_POSITIONS['ALL']

        self._setup_ui()

        usbif.send(um.ControlWriteW(mode=um.WriteWMode.ALL, s1_s2=0))
        z = {k: 0 for k in TIME_SWITCHES.keys()}
        usbif.send(um.ControlTimeSwitches(**z))
        z = {k: 0 for k in PULSE_SWITCHES.keys()}
        usbif.send(um.ControlPulseSwitches(**z))

        #usbif.poll("monitor", um.ControlTimeSwitches())
        #usbif.poll("monitor", um.ControlPulseSwitches())
        #usbif.listen(self)

    #def handle_msg(self, msg):
    #    pass

    def _update_mode(self, mode):
        self._mode = mode
        self._send_mode(self._s2.switch.isChecked())

    def _send_mode(self, s1_s2):
        self._usbif.send(um.ControlWriteW(mode=self._mode, s1_s2=s1_s2))

    def _send_times(self, state):
        time_states = {s: self._time_switches[s].isChecked() for s in self._time_switches.keys()}
        self._usbif.send(um.ControlTimeSwitches(**time_states))

    def _send_pulses(self, state):
        pulse_states = {s: self._pulse_switches[s].isChecked() for s in self._pulse_switches.keys()}
        self._usbif.send(um.ControlPulseSwitches(**pulse_states))

    def _setup_ui(self):
        layout = QVBoxLayout(self)
        self.setLayout(layout)
        layout.setMargin(10)
        layout.setSpacing(20)

        ww = QWidget(self)
        wwf = QHBoxLayout(ww)
        wwf.setMargin(0)
        wwf.setSpacing(20)
        ww.setLayout(wwf)

        ag1 = ApolloGroup(self, "WRITE W", nframes=2)
        for label, mode in WRITE_W_POSITIONS.items():
            w = ApolloLabeledRSwitch(ag1, label, labelwidth=20)
            w.switch.pressed.connect(lambda m=mode: self._update_mode(m))
            if label == 'ALL':
                w.switch.setChecked(True)
                ag1.addWidget(w, 0)
                ag1.framelayouts[0].addStretch()
            else:
                ag1.addWidget(w, 1)
        ag1.group()
        wwf.addWidget(ag1)
        wwf.addStretch(100)

        ag0 = ApolloGroup(self, "S SELECT")
        self._s1 = ApolloLabeledRSwitch(self, "S1")
        self._s1.switch.setChecked(True)
        self._s1.switch.toggled.connect(lambda s: self._send_mode(s))
        ag0.addSpacing(5)
        ag0.addWidget(self._s1)
        ag0.addSpacing(10)
        self._s2 = ApolloLabeledRSwitch(self, "S2")
        ag0.addWidget(self._s2)
        ag0.addSpacing(5)
        ag0.group()
        wwf.addWidget(ag0)

        layout.addWidget(ww)

        ag2 = ApolloGroup(self, "TIME PULSES", nframes=2)
        self._add_switches(ag2, TIME_SWITCHES, self._time_switches, self._send_times)
        layout.addWidget(ag2)

        ag3 = ApolloGroup(self, "CONTROL PULSES", nframes=2)
        self._add_switches(ag3, PULSE_SWITCHES, self._pulse_switches, self._send_pulses)
        layout.addWidget(ag3)

        layout.addStretch(1000)

    def _add_switches(self, parent, switches, switch_dict, switch_fn):
        n = len(switches)
        for i, (v, l) in enumerate(switches.items()):
            f = i // (n // 2)
            if i != 0:
                parent.addStretch(f)
            w = ApolloLabeledSwitch(parent, l, labelwidth=33)
            w.switch.stateChanged.connect(switch_fn)
            switch_dict[v] = w.switch

            parent.addWidget(w, f)
