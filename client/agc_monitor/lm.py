from PySide2.QtWidgets import QWidget, QPushButton, QStyleOption, QStyle, QHBoxLayout, QVBoxLayout, QSlider, QLabel
from PySide2.QtGui import QPixmap, QPainter, QPalette, QPen, QBrush, QColor, QPainterPath, QFont, QFontInfo
from PySide2.QtCore import Qt, QTimer, QSize, QPointF, QRectF

import usb_message as um

import math
from fdai_old import FDAI


class LM(QWidget):
    def __init__(self, parent, usbif):
        super().__init__(parent)

        self._usbif = usbif

        self._setup_ui()

        usbif.listen(self)

    def handle_msg(self, msg):
        pass

    def _setup_ui(self):
        self.setObjectName('#LM')
        self.setWindowFlags(Qt.Window)
        self.setWindowTitle('LM Controls')

        layout = QHBoxLayout()
        self.setLayout(layout)
        self.fdai = FDAI(self)
        layout.addWidget(self.fdai)

        control_layout = QVBoxLayout()

        xl = QHBoxLayout()
        control_layout.addLayout(xl)
        self.xslider = QSlider()
        self.xslider.setOrientation(Qt.Horizontal)
        self.xslider.setTickPosition(QSlider.TicksBelow)
        self.xslider.setTickInterval(10)
        self.xslider.setMinimum(0)
        self.xslider.setMaximum(100)
        self.xslider.setValue(50)
        self.xslider.valueChanged.connect(self.changedXValue)
        self.xlabel = QLabel("0")

        xl.addWidget(QLabel("Roll"))
        xl.addWidget(self.xslider)
        xl.addWidget(self.xlabel)

        yl = QHBoxLayout()
        control_layout.addLayout(yl)
        self.yslider = QSlider()
        self.yslider.setOrientation(Qt.Horizontal)
        self.yslider.setTickPosition(QSlider.TicksBelow)
        self.yslider.setTickInterval(10)
        self.yslider.setMinimum(0)
        self.yslider.setMaximum(100)
        self.yslider.setValue(50)
        self.yslider.valueChanged.connect(self.changedYValue)
        self.ylabel = QLabel("0")

        yl.addWidget(QLabel("Yaw"))
        yl.addWidget(self.yslider)
        yl.addWidget(self.ylabel)

        zl = QHBoxLayout()
        control_layout.addLayout(zl)
        self.zslider = QSlider()
        self.zslider.setOrientation(Qt.Horizontal)
        self.zslider.setTickPosition(QSlider.TicksBelow)
        self.zslider.setTickInterval(10)
        self.zslider.setMinimum(0)
        self.zslider.setMaximum(100)
        self.zslider.setValue(50)
        self.zslider.valueChanged.connect(self.changedZValue)
        self.zlabel = QLabel("0")

        zl.addWidget(QLabel("Pitch"))
        zl.addWidget(self.zslider)
        zl.addWidget(self.zlabel)


        control_layout.addStretch()


        layout.addLayout(control_layout)
        self.setOrientation()

        self.show()

    def changedXValue(self):
        size = int(round(-180 + 360*self.xslider.value() / 100))
        self.xlabel.setText(str(size))
        self.setOrientation()

    def changedYValue(self):
        size = int(round(-180 + 360*self.yslider.value() / 100))
        self.ylabel.setText(str(size))
        self.setOrientation()

    def changedZValue(self):
        size = int(round(-180 + 360*self.zslider.value() / 100))
        self.zlabel.setText(str(size))
        self.setOrientation()

    def changedAngleValue(self):
        angle = self.aslider.value()
        self.alabel.setText(str(angle))
        self.setOrientation()

    def setOrientation(self):
        roll = -180 + 360*self.xslider.value() / 100
        yaw = -180 + 360*self.yslider.value() / 100
        pitch = -180 + 360*self.zslider.value() / 100
        #angle = self.aslider.value()
        self.fdai.setOrientation(roll, yaw, pitch)

    def debug(self):
        pass