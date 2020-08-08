from PySide2.QtWidgets import QWidget, QFrame, QHBoxLayout, QVBoxLayout, QGridLayout, QLabel, QGroupBox, QButtonGroup, QRadioButton, QPushButton
from PySide2.QtCore import Qt

import usb_message as um
from apollo_ui import ApolloGroup, ApolloLabeledButton, ApolloLabeledRSwitch, ApolloLabeledEntry
from reg_validator import IntValidator


class ReadLoad(QFrame):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._s1_s2_switches = {}
        self._usbif = usbif

        self._setup_ui()

        usbif.send(um.ControlLoadReadS1S2(load_preset=0, load_channel=0, read_preset=0, read_channel=0, start_preset=0))

    def _update_s1_s2_switches(self, state):
        switch_states = {switch: int(self._s1_s2_switches[switch].isChecked()) for switch in self._s1_s2_switches.keys()}
        self._usbif.send(um.ControlLoadReadS1S2(**switch_states))

    def _setup_ui(self):
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(20)

        ag0 = ApolloGroup(self, "STEP")
        layout.addWidget(ag0)

        b1 = ApolloLabeledButton(self, "PROCEED", lines=2, callback=self._proceed)
        b2 = ApolloLabeledButton(self, "RESET\nERROR", lines=2)

        self.n_nisq = ApolloLabeledEntry(self, "NISQ\nSTEPS", value_text="1", lines=2)
        self.n_nisq.value.setValidator(IntValidator(pow(2, 16) - 1))
        self.n_nisq.value.returnPressed.connect(self._set_nisq_steps)

        ag0.addWidget(b1)
        ag0.addWidget(self.n_nisq)
        ag0.addWidget(b2)

        ag1 = ApolloGroup(self, "LOAD", nframes=2)
        layout.addWidget(ag1)

        ls1 = ApolloLabeledButton(ag1, "\nS")
        ls2 = ApolloLabeledButton(ag1, "\nPRESET")
        ls3 = ApolloLabeledButton(ag1, "PRESET\nCHAN")
        ls1.switch.pressed.connect(lambda: self._usbif.send(um.ControlLoadS(0)))
        ls2.switch.pressed.connect(lambda: self._usbif.send(um.ControlLoadPreset(0)))
        ls3.switch.pressed.connect(lambda: self._usbif.send(um.ControlLoadChannel(0)))
        ag1.addWidget(ls1, 0)
        ag1.addWidget(ls2, 0)
        ag1.addWidget(ls3, 0)

        lss1 = ApolloLabeledRSwitch(ag1, "S1", labelwidth=37)
        lss2 = ApolloLabeledRSwitch(ag1, "S2", labelwidth=37)
        lss1.switch.setChecked(True)
        self._s1_s2_switches['load_preset'] = lss1.switch
        self._s1_s2_switches['load_channel'] = lss2.switch
        lss1.switch.toggled.connect(self._update_s1_s2_switches)
        lss2.switch.toggled.connect(self._update_s1_s2_switches)

        ag1.framelayouts[1].addStretch()
        ag1.addWidget(lss1, 1)
        ag1.addWidget(lss2, 1)
        ag1.group()

        ag2 = ApolloGroup(self, "READ", nframes=2)
        layout.addWidget(ag2)

        rs1 = ApolloLabeledButton(ag1, "\nS")
        rs2 = ApolloLabeledButton(ag1, "\nPRESET")
        rs3 = ApolloLabeledButton(ag1, "PRESET\nCHAN")
        rs1.switch.pressed.connect(lambda: self._usbif.send(um.ControlReadS(0)))
        rs2.switch.pressed.connect(lambda: self._usbif.send(um.ControlReadPreset(0)))
        m = um.ControlReadChannel(0)
        print(m)
        rs3.switch.pressed.connect(lambda: self._usbif.send(m))

        ag2.addWidget(rs1, 0)
        ag2.addWidget(rs2, 0)
        ag2.addWidget(rs3, 0)
        rss1 = ApolloLabeledRSwitch(ag2, "S1", labelwidth=37)
        rss2 = ApolloLabeledRSwitch(ag2, "S2", labelwidth=37)
        rss1.switch.setChecked(True)
        self._s1_s2_switches['read_preset'] = rss1.switch
        self._s1_s2_switches['read_channel'] = rss2.switch
        rss1.switch.toggled.connect(self._update_s1_s2_switches)
        rss2.switch.toggled.connect(self._update_s1_s2_switches)

        ag2.framelayouts[1].addStretch()
        ag2.addWidget(rss1, 1)
        ag2.addWidget(rss2, 1)
        ag2.group()

        ag3 = ApolloGroup(self, "START", nframes=2)
        layout.addWidget(ag3)

        ss1 = ApolloLabeledButton(ag3, "\nS")
        ss2 = ApolloLabeledButton(ag3, "\nPRESET")
        ss3 = ApolloLabeledButton(ag3, "\nRESTART")
        ss1.switch.pressed.connect(lambda: self._usbif.send(um.ControlStartS(0)))
        ss2.switch.pressed.connect(lambda: self._usbif.send(um.ControlStartPreset(0)))
        ss3.switch.pressed.connect(lambda: self._usbif.send(um.ControlStart(0)))

        ag3.addWidget(ss1, 0)
        ag3.addWidget(ss2, 0)
        ag3.addWidget(ss3, 0)

    def _set_nisq_steps(self):
        t = self.n_nisq.value.text()
        if not t:
            t = 0
        n = int(t)
        msg = um.ControlNNISQSteps(n=n)
        print(msg)
        self._usbif.send(msg)

    def _proceed(self):
        self._usbif.send(um.ControlProceed(1))