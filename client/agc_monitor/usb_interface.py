from PySide2.QtCore import QObject, QTimer, Signal
from pylibftdi import Device, USB_PID_LIST, USB_VID_LIST, FtdiError
import queue
import time
import warnings

from slip import slip, unslip, unslip_from
import usb_message as um


STYX_VID = 0x2a19
STYX_PID = 0x1007

POLL_PERIOD_MS = 25
POLL_DIVIDER = 2


class USBInterface(QObject):
    msg_sent = Signal(object)
    msg_received = Signal(object)
    connected = Signal(bool)

    def __init__(self):
        QObject.__init__(self)

        # Clear the FTDI VID and PID lists and replace them with the Styx
        # PID and VID, so we will only match Styx boards
        USB_VID_LIST.clear()
        USB_VID_LIST.append(STYX_VID)

        USB_PID_LIST.clear()
        USB_PID_LIST.append(STYX_PID)

        self._dev = None

        self._poll_msgs = []
        self._tx_queue = queue.Queue()
        self._rx_bytes = b''
        self._poll_ctr = 0

        self._timer = QTimer(None)
        self._timer.timeout.connect(self._service)
        self._timer.start(POLL_PERIOD_MS)
        self.msg_sent.connect(self.send_msg)

    def __del__(self):
        if self._dev:
            self._dev.flush()
            self._dev.close()

    def listen(self, listener):
        self.msg_received.connect(listener.handle_msg)

    def send(self, msg):
        self.msg_sent.emit(msg)

    def send_msg(self, msg):
        self._tx_queue.put(msg)

    def poll(self, msg):
        if msg not in self._poll_msgs:
            self._poll_msgs.append(msg)

    def _enqueue_poll_msgs(self):
        for msg in self._poll_msgs:
            self._tx_queue.put(msg)

    def _service(self):
        #print("Service")
        #self._dev = True
        if self._dev is None:
            #print("Connecting")
            self._connect()
        else:
            self._enqueue_poll_msgs()
            while not self._tx_queue.empty():
                msg = self._tx_queue.get_nowait()
                if msg.datadict:
                    pass
                    #print(f"Sending {msg}")
                else:
                    pass
                    #print(f"Sending {msg}")
                packed_msg = msg.pack()
                slipped_msg = slip(packed_msg)
                try:
                    self._dev.write(slipped_msg)
                except:
                     print("Error writing to FTDI")
                     self._disconnect()
                     return

            try:
                # Workaround to ensure direct return of data
                # Somehow, it takes 3 reads to get any data, even if data
                # is available at the time of the first read
                self._rx_bytes += self._dev.read(4096)
                self._rx_bytes += self._dev.read(4096)
                self._rx_bytes += self._dev.read(4096)
            except:
                print("Error reading from FTDI")
                self._disconnect()
                return

            while self._rx_bytes != b'':
                msg_bytes, self._rx_bytes = unslip_from(self._rx_bytes)
                if msg_bytes == b'':
                    break

                #try:
                msg = um.message_factory(msg_bytes)
                #except:
                #    warnings.warn('Unknown message %s' % msg_bytes)
                #    continue

                #print(f"Received {msg}")
                self.msg_received.emit(msg)

    def _connect(self):
        try:
            # Attempt to construct an FTDI Device
            self._dev = Device()
            print("Device opened")

            # Reset the mode, then switch into serial FIFO
            self._dev.ftdi_fn.ftdi_set_bitmode(0xFF, 0x00)
            time.sleep(0.01)
            self._dev.ftdi_fn.ftdi_set_bitmode(0xFF, 0x40)

            # Set communication params
            self._dev.ftdi_fn.ftdi_set_latency_timer(5)
            self._dev.ftdi_fn.ftdi_setflowctrl(0)
            self._dev.ftdi_fn.ftdi_usb_purge_buffers()

            # Mark ourselves connected
            self.connected.emit(True)

        except FtdiError:
            pass
            print("Could not connect to device")
            self.connected.emit(False)

    def _disconnect(self):
        self.connected.emit(False)
        self._dev = None
