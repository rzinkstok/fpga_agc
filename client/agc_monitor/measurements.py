from PySide2.QtWidgets import QWidget, QGridLayout
import usb_message as um
from apollo_ui import ApolloGroup, ApolloLabeledValue


class Measurements(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif

        self._setup_ui()

        usbif.poll(um.StatusTemp())
        usbif.poll(um.StatusVccInt())
        usbif.poll(um.StatusVccAux())
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
        layout = QGridLayout(self)
        self.setLayout(layout)
        layout.setMargin(1)
        layout.setHorizontalSpacing(10)
        layout.setVerticalSpacing(1)

        ag = ApolloGroup(self, "MEASUREMENTS")
        self._temp = ApolloLabeledValue(self, "TEMP", "0.0 C")
        self._vccint = ApolloLabeledValue(self, "VCCINT", "0.0 V")
        self._vccaux = ApolloLabeledValue(self, "VCCAUX", "0.0 V")
        ag.addWidget(self._temp)
        ag.addWidget(self._vccint)
        ag.addWidget(self._vccaux)
        layout.addWidget(ag)

