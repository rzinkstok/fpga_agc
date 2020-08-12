from PySide2.QtWidgets import QWidget, QVBoxLayout, QButtonGroup, QFileDialog

from memory_load import MemoryLoad
from memory_dump import MemoryDump
from apollo_ui import ApolloGroup, ApolloLabeledButton, ApolloLabeledSwitch, ApolloLabeledRSwitch
import usb_message as um


class FixedMemory(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif

        self._bank_switches = []
        self._updating_switches = False

        self._setup_ui()

        self._rope_loader = MemoryLoad(usbif, um.SimFixedData, 0o100, 1024, self._bank_switches, self._aux_switch)
        self._rope_loader.finished.connect(self._load_complete)

        self._rope_dumper = MemoryDump(usbif, um.FixedData, um.FixedData, 0o100, 1024, self._bank_switches, self._aux_switch)
        self._rope_dumper.finished.connect(self._dump_complete)

    def _setup_ui(self):
        layout = QVBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(20)

        ag = ApolloGroup(self, "FIXED MEMORY", nframes=3)
        layout.addWidget(ag)

        for bank in range(0o44):
            row = int(bank / 18)
            sw = ApolloLabeledSwitch(self, f"{bank:o}", labelwidth=16)
            ag.addWidget(sw, row)
            sw.switch.stateChanged.connect(lambda state, bank=bank: self._update_crs_bank(bank))
            self._bank_switches.append(sw.switch)

        aux_switch = ApolloLabeledSwitch(self, "\n44-77", lines=2, labelwidth=36)
        self._aux_switch = aux_switch.switch
        ag.addWidget(aux_switch, 2)

        ag.addSpacing(30, 2)

        b1 = ApolloLabeledButton(self, '\nALL', lines=2, callback=lambda: self._set_all(True))
        b2 = ApolloLabeledButton(self, '\nNONE', lines=2, callback=lambda: self._set_all(False))
        ag.addWidget(b1, 2)
        ag.addWidget(b2, 2)

        # ag.addSpacing(30, 2)

        # cb1 = ApolloLabeledRSwitch(self, "\nSIM", lines=2, labelwidth=30)
        # cb2 = ApolloLabeledRSwitch(self, "\nAGC", lines=2, labelwidth=30)
        # cb2.switch.setChecked(True)
        # self._agc_sel = cb2.switch

        # group = QButtonGroup(self)
        # group.addButton(cb1.switch)
        # group.addButton(cb2.switch)
        # ag.addWidget(cb1, 2)
        # ag.addWidget(cb2, 2)

        ag.addStretch(2)

        b3 = ApolloLabeledButton(self, "LOAD\nSIM", lines=2, callback=self._load_rope)
        b4 = ApolloLabeledButton(self, "DUMP\nAGC", lines=2, callback=self._dump_rope)
        ag.addWidget(b3, 2)
        ag.addWidget(b4, 2)

    def _update_crs_bank(self, bank):
        if self._updating_switches:
            return

        group = int(bank / 16)
        first_bank = group * 16

        enables = {}
        for i in range(16):
            bank = first_bank + i
            if bank < 0o44:
                sw = self._bank_switches[bank]
            else:
                sw = self._aux_switch

            enables[f"f{bank:o}"] = sw.isChecked()

        write_crs_enables = getattr(um, f'ControlCRSBankEnable{group}')
        self._usbif.send(write_crs_enables(**enables))

    def _update_all_banks(self):
        for bank in [0, 0o20, 0o40, 0o60]:
            self._update_crs_bank(bank)

    def _set_all(self, state):
        self._updating_switches = True
        for sw in self._bank_switches:
            sw.setChecked(state)
        self._updating_switches = False
        self._update_all_banks()

    def _load_rope(self):
        self._usbif.disable_source("monitor")
        filename, group = QFileDialog.getOpenFileName(self, 'Load AGC Rope', '/home/rzinkstok/fpga_agc/cores/', 'AGC ROMs (*.bin)')
        self._usbif.enable_source("monitor")
        if group == '':
            return
        self._updating_switches = True
        self._rope_loader.load_memory(filename)

    def _load_complete(self):
        self._updating_switches = False

    def _dump_complete(self):
        self._updating_switches = False
        self._update_all_banks()

    def _dump_rope(self):
        self._usbif.disable_source("monitor")
        filename, group = QFileDialog.getSaveFileName(self, 'Save AGC Rope', '/home/rzinkstok/fpga_agc/cores/', 'AGC ROMs (*.bin)')
        self._usbif.enable_source("monitor")
        if group == '':
            return

        #self._updating_switches = True

        # if self._agc_sel.isChecked():
        #     for m in [um.ControlCRSBankEnable0, um.ControlCRSBankEnable1, um.ControlCRSBankEnable2, um.ControlCRSBankEnable3]:
        #         z = {k: False for k in m.keys}
        #         self._usbif.send(m(**z))

        self._rope_dumper.dump_memory(filename)