from PySide2.QtWidgets import QWidget, QHBoxLayout

from apollo_ui import ApolloGroup, ApolloLabeledValue
import usb_message as um


class Measurements(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif

        self._setup_ui()

        usbif.poll("monitor", um.StatusTemp())
        usbif.poll("monitor", um.StatusVccInt())
        usbif.poll("monitor", um.StatusVccAux())
        usbif.listen(self)

    def handle_msg(self, msg):
        if isinstance(msg, um.StatusVccAux):
            self._vccaux.value.setText('%.02f V' % self._convert_fpga_volts(msg.counts))
        elif isinstance(msg, um.StatusVccInt):
            self._vccint.value.setText('%.02f V' % self._convert_fpga_volts(msg.counts))
        elif isinstance(msg, um.StatusTemp):
            self._temp.value.setText('%.01f C' % self._convert_mon_temp(msg.counts))

    def _convert_mon_temp(self, counts):
        # Taken from UG480 p.33
        return ((counts * 503.975) / 4096.0) - 273.15

    def _convert_fpga_volts(self, counts):
        # Taken from UG480 p.34
        return (counts / 4096.0) * 3

    def _setup_ui(self):
        layout = QHBoxLayout(self)
        self.setLayout(layout)
        layout.setMargin(0)
        layout.setSpacing(0)

        ag = ApolloGroup(self, "MEASUREMENTS")
        self._temp = ApolloLabeledValue(self, "TEMP", "0.0 C", lines=2)
        self._vccint = ApolloLabeledValue(self, "VCCINT", "0.0 V", lines=2)
        self._vccaux = ApolloLabeledValue(self, "VCCAUX", "0.0 V", lines=2)
        ag.addWidget(self._temp)
        ag.addWidget(self._vccint)
        ag.addWidget(self._vccaux)
        layout.addWidget(ag)

