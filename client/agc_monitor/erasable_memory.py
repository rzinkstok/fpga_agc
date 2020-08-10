from PySide2.QtWidgets import QWidget, QVBoxLayout, QButtonGroup, QLabel, QCheckBox, QPushButton, QFileDialog
from PySide2.QtCore import Qt

from memory_load import MemoryLoad
from memory_dump import MemoryDump
import usb_message as um
from apollo_ui import ApolloGroup, ApolloLabeledButton, ApolloLabeledSwitch, ApolloLabeledRSwitch


class ErasableMemory(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)
        self._usbif = usbif

        self._bank_switches = []
        self._updating_switches = False

        self._setup_ui()

        self._core_loader = MemoryLoad(usbif, um.SimErasableData, 0o10, 256, self._bank_switches, None)
        self._core_loader.finished.connect(self._load_complete)

        self._core_dumper = MemoryDump(usbif, um.ErasableData, um.ErasableData, 0o10, 256, self._bank_switches, None)
        self._core_loader.finished.connect(self._dump_complete)

    def _setup_ui(self):
        layout = QVBoxLayout(self)
        self.setLayout(layout)
        layout.setSpacing(20)

        ag = ApolloGroup(self, "ERASABLE MEMORY", nframes=2)
        layout.addWidget(ag)

        for bank in range(0o10):
            sw = ApolloLabeledSwitch(self, f"{bank:o}", labelwidth=16)
            ag.addWidget(sw, 0)
            sw.switch.stateChanged.connect(self._update_ems_banks)
            self._bank_switches.append(sw.switch)

        b1 = ApolloLabeledButton(self, '\nALL', lines=2, callback=lambda: self._set_all(True))
        b2 = ApolloLabeledButton(self, '\nNONE', lines=2, callback=lambda: self._set_all(False))
        ag.addWidget(b1, 1)
        ag.addWidget(b2, 1)

        ag.addSpacing(30, 1)

        cb1 = ApolloLabeledRSwitch(self, "\nSIM", lines=2, labelwidth=30)
        cb2 = ApolloLabeledRSwitch(self, "\nAGC", lines=2, labelwidth=30)
        cb2.switch.setChecked(True)
        self._agc_sel = cb2.switch

        group = QButtonGroup(self)
        group.addButton(cb1.switch)
        group.addButton(cb2.switch)
        ag.addWidget(cb1, 1)
        ag.addWidget(cb2, 1)

        ag.addStretch(1)

        b3 = ApolloLabeledButton(self, "PAD\nSIM", lines=2, callback=self._load_pad)
        b4 = ApolloLabeledButton(self, "LOAD\nSIM", lines=2, callback=self._load_core)
        b5 = ApolloLabeledButton(self, "DUMP\nAGC", lines=2, callback=self._dump_core)
        ag.addWidget(b3, 1)
        ag.addWidget(b4, 1)
        ag.addWidget(b5, 1)

    def _update_ems_banks(self):
        if self._updating_switches:
            return

        enables = {}
        for bank, sw in enumerate(self._bank_switches):
            enables[f"e{bank:o}"] = sw.isChecked()

        self._usbif.send(um.ControlEMSBankEnable(**enables))

    def _set_all(self, state):
        self._updating_switches = True
        for sw in self._bank_switches:
            sw.setChecked(state)
        self._updating_switches = False
        self._update_ems_banks()

    def _create_button(self, name, layout, row, col, width):
        label = QLabel(name, self)
        label.setAlignment(Qt.AlignCenter)
        font = label.font()
        font.setPointSize(7)
        font.setBold(True)
        label.setFont(font)
        label.setMinimumWidth(30)
        layout.addWidget(label, row, col, 1, width)
        layout.setAlignment(label, Qt.AlignCenter)

        b = QPushButton(self)
        b.setFixedSize(20, 20)
        layout.addWidget(b, row + 1, col, 1, width)
        layout.setAlignment(b, Qt.AlignCenter)
        return b

    def _create_bank_switch(self, name, layout, row, col, width):
        label = QLabel(name, self)
        label.setAlignment(Qt.AlignBottom | (Qt.AlignLeft if width == 2 else Qt.AlignCenter))
        font = label.font()
        font.setPointSize(7)
        font.setBold(True)
        label.setFont(font)
        layout.addWidget(label, row, col, 1, width)

        check = QCheckBox(self)
        check.setFixedSize(20, 20)
        check.setStyleSheet('QCheckBox::indicator{subcontrol-position:center;}')
        layout.addWidget(check, row + 1, col, 1, 1)
        layout.setAlignment(check, Qt.AlignCenter)
        return check

    def _load_pad(self):
        filename, group = QFileDialog.getOpenFileName(self, 'Load AGC Pad Load', '/home/rzinkstok/fpga_agc/pads/', 'AGC Pad Load Files (*.pad)')
        if group == '':
            return

        load_data = []
        with open(filename, 'r') as f:
            for l in f.readlines():
                parts = l.split()
                addr_idx = 0
                if len(parts) == 3:
                    if parts[0] in ('CMPAD', 'LMPAD'):
                        addr_idx = 1
                    else:
                        raise RuntimeError('Invalid pad load line "%s"' % l)
                elif len(parts) != 2:
                    raise RuntimeError('Invalid pad load line "%s"' % l)

                addr = int(parts[addr_idx], 8)
                val = int(parts[addr_idx + 1], 8)
                load_data.append((addr, val))

        msg_type = um.ErasableData if self._agc_sel.isChecked() else um.SimErasableData
        for addr, val in load_data:
            print('%04o %o' % (addr, val))
            self._usbif.send(msg_type(addr=addr, data=val, parity=0))

    def _load_core(self):
        filename, group = QFileDialog.getOpenFileName(self, 'Load AGC Core File', '/home/rzinkstok/fpga_agc/cores/', 'AGC Core Files (*.bin)')
        if group == '':
            return
        self._updating_switches = True
        self._core_loader.load_memory(filename, um.ErasableData if self._agc_sel.isChecked() else um.SimErasableData)

    def _load_complete(self):
        self._updating_switches = False

    def _dump_complete(self):
        self._updating_switches = False
        self._update_ems_banks()

    def _dump_core(self):
        filename, group = QFileDialog.getSaveFileName(self, 'Save AGC Core Dump', '/home/rzinkstok/fpga_agc/cores/', 'AGC Core Files (*.bin)')
        if group == '':
            return

        self._updating_switches = True

        if self._agc_sel.isChecked():
            z = {f"e{bank}": False for bank in range(8)}
            self._usbif.send(um.ControlEMSBankEnable(**z))

        self._core_dumper.dump_memory(filename)