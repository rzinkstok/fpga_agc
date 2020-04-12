from PySide2.QtWidgets import QWidget, QVBoxLayout, QLabel, QFrame, QCheckBox
from PySide2.QtGui import QPainter, QColor, QRadialGradient
from PySide2.QtCore import QPointF, Qt


class Indicator(QWidget):
    def __init__(self, parent, color, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        self.setMinimumSize(16, 16)
        self._color = color
        self._on = False

    def set_on(self, on):
        # Set our state and redraw
        on = bool(on)
        if self._on != on:
            self._on = on
            self.update()

    def paintEvent(self, event):
        p = QPainter(self)
        p.setRenderHint(QPainter.Antialiasing)

        # Determine the width and height of the indicator
        w = self.width()
        h = self.height()

        # The smaller dimension determines our diameter
        d = min(w, h) * 0.9
        r = d/2

        if False:
            p.drawLine(0, 0, w, 0)
            p.drawLine(w, 0, w, h)
            p.drawLine(w, h, 0, h)
            p.drawLine(0, h, 0, 0)

        # Locate the center of the indicator circle
        center = QPointF(w/2, h/2)

        if self._on:
            # Gradient focus in the top left, fading from brighter to bright
            focus = center - QPointF(r, r)
            color0 = self._color
            color1 = self._color.darker(132)
        else:
            # Gradient focus in the bottom right, fading from darker to dark
            focus = center + QPointF(r, r)
            color0 = self._color.darker(800)
            color1 = self._color.darker(255)

        # Construct the gradient and draw the circle using it
        gradient = QRadialGradient(focus, d * 1.4, focus)
        gradient.setColorAt(0, color0)
        gradient.setColorAt(1, color1)
        p.setBrush(gradient)
        p.setPen(QColor(96, 96, 96))
        p.drawEllipse(center, r, r)


class LabelIndicator(QFrame):
    def __init__(self, parent, color, text, *args, lines=1, switch=False, callback=None, direct_connect=True, **kwargs):
        super().__init__(parent, *args, **kwargs)
        layout = QVBoxLayout()
        layout.setSpacing(0)
        layout.setMargin(0)
        layout.addStretch()

        # Make sure the text is bottom aligned in the specified number of lines
        text = "\n" * (lines - text.count("\n") - 1) + text

        self._label = QLabel(text, parent)
        self._label.setAlignment(Qt.AlignCenter)
        layout.addWidget(self._label)

        layout.addSpacing(4)

        self._indicator = Indicator(parent, color)
        self._indicator.setFixedSize(20, 20)
        layout.addWidget(self._indicator)
        layout.setAlignment(self._indicator, Qt.AlignCenter)

        if switch:
            self.switch = QCheckBox(parent)
            if callback:
                self.switch.stateChanged.connect(callback)
            if direct_connect:
                self.switch.stateChanged.connect(self._indicator.set_on)

            self.switch.setFixedSize(20, 20)
            self.switch.setStyleSheet('QCheckBox::indicator{ subcontrol-position:center; } QCheckBox { color: #666; }')
            layout.addWidget(self.switch)
            layout.setAlignment(self.switch, Qt.AlignCenter)
        else:
            layout.addSpacing(20)
        layout.addStretch()

        self.setLayout(layout)
