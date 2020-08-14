from PySide2.QtWidgets import QWidget, QVBoxLayout, QHBoxLayout, QLabel, QFrame, QCheckBox, QRadioButton, QButtonGroup, QSizePolicy, QPushButton, QLineEdit
from PySide2.QtGui import QPainter, QColor, QRadialGradient, QFontMetrics
from PySide2.QtCore import QPointF, Qt, QSize


class ApolloGroupHeading(QWidget):
    def __init__(self, parent, text, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        self.setSizePolicy(
            QSizePolicy.MinimumExpanding,
            QSizePolicy.Fixed
        )

        self.text = text
        self.font_metrics = QFontMetrics(self.font())
        self.text_width = self.font_metrics.width(self.text)
        self.text_height = self.font_metrics.height()

    def sizeHint(self):
        return QSize(self.text_width, self.text_height)

    def paintEvent(self, event):
        p = QPainter(self)

        left_edge = self.width() // 2 - self.text_width // 2
        right_edge = self.width() // 2 + self.text_width // 2

        p.drawText(left_edge, self.text_height, self.text)

        x0 = 0
        x1 = left_edge - 4
        x2 = right_edge + 4
        x3 = self.width() - 1
        y0 = self.height()//2 + 2
        y1 = self.height()

        p.drawLine(x0, y0, x1, y0)
        p.drawLine(x2, y0, x3, y0)
        p.drawLine(x0, y0, x0, y1)
        p.drawLine(x3, y0, x3, y1)

        p.end()


class ApolloGroup(QWidget):
    def __init__(self, parent, text, horizontal=True, nframes=1, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        self.widgets = []

        self.layout = QVBoxLayout()
        self.layout.setSpacing(0)
        self.layout.setMargin(0)
        self.layout.setContentsMargins(0, 0, 0, 0)

        self.heading = ApolloGroupHeading(parent, text)
        self.layout.addWidget(self.heading)
        self.layout.addSpacing(12)

        self.framelayouts = []
        for i in range(nframes):
            f = QFrame(parent)
            self.layout.addWidget(f)
            if horizontal:
                self.framelayouts.append(QHBoxLayout())
            else:
                self.framelayouts.append(QVBoxLayout())
            self.framelayouts[-1].setMargin(0)
            self.framelayouts[-1].setSpacing(10)
            f.setLayout(self.framelayouts[-1])

            if i < nframes - 1:
                self.layout.addSpacing(8)

        self.layout.addStretch()
        self.setLayout(self.layout)

    def addWidget(self, w, frame=0):
        self.widgets.append(w)
        self.framelayouts[frame].addWidget(w)

    def addSpacing(self, spacing, frame=0):
        self.framelayouts[frame].addSpacing(spacing)

    def addStretch(self, frame=0):
        self.framelayouts[frame].addStretch()

    def group(self):
        bg = QButtonGroup(self)
        for w in self.widgets:
            try:
                bg.addButton(w.switch)
            except AttributeError:
                pass
        bg.exclusive()


class ApolloControl(QWidget):
    def __init__(self, parent, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)

        self.layout = QVBoxLayout()
        self.layout.setSpacing(0)
        self.layout.setMargin(0)
        self.layout.setContentsMargins(0, 0, 0, 0)
        self.layout.addStretch()
        self.setLayout(self.layout)

    def addWidget(self, w):
        self.layout.addWidget(w)
        try:
            w.setAlignment(Qt.AlignCenter)
        except AttributeError:
            pass
        self.layout.setAlignment(w, Qt.AlignCenter)

    def addStretch(self, stretch=0):
        self.layout.addStretch(stretch)


class ApolloIndicator(QWidget):
    def __init__(self, parent, color, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        self.setMinimumSize(20, 20)
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


class ApolloLabeledIndicator(ApolloControl):
    def __init__(self, parent, text, color, lines=1, labelwidth=32, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        # Make sure the text is bottom aligned in the specified number of lines
        text = "\n" * (lines - text.count("\n") - 1) + text
        self.label = QLabel(text, self)
        self.label.setFixedWidth(labelwidth)
        self.addWidget(self.label)
        self.layout.addSpacing(4)

        self.indicator = ApolloIndicator(self, color)
        self.indicator.setFixedSize(20, 20)
        self.addWidget(self.indicator)

        self.addStretch()


class ApolloLabeledIndicatorSwitch(ApolloLabeledIndicator):
    def __init__(self, parent, text, color, lines=1, callback=None, direct_connect=True, *args, **kwargs):
        super().__init__(parent, text, color, lines, *args, **kwargs)
        self.switch = QCheckBox(self)
        if callback:
            self.switch.stateChanged.connect(callback)
        if direct_connect:
            self.switch.stateChanged.connect(self.indicator.set_on)
        self.switch.setFixedSize(20, 20)
        self.switch.setStyleSheet('QCheckBox::indicator{ subcontrol-position:center; } QCheckBox { color: #666; }')
        self.addWidget(self.switch)
        self.addStretch()


class ApolloLabeledSwitch(ApolloControl):
    def __init__(self, parent, text, lines=1, tristate=False, labelwidth=32, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        # Make sure the text is bottom aligned in the specified number of lines
        text = "\n" * (lines - text.count("\n") - 1) + text
        self.label = QLabel(text, self)
        self.label.setFixedWidth(labelwidth)
        self.addWidget(self.label)
        self.layout.addSpacing(3)
        self.switch = QCheckBox(self)
        if tristate:
            self.switch.setTristate(True)
        self.switch.setFixedSize(20, 20)
        self.switch.setStyleSheet('QCheckBox::indicator{ subcontrol-position:center; } QCheckBox { color: #666; }')
        self.addWidget(self.switch)
        self.addStretch(100)


class ApolloLabeledRSwitch(ApolloControl):
    def __init__(self, parent, text, lines=1, labelwidth=16, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        # Make sure the text is bottom aligned in the specified number of lines
        text = "\n" * (lines - text.count("\n") - 1) + text
        self.label = QLabel(text, self)
        self.label.setFixedWidth(labelwidth)
        self.addWidget(self.label)
        self.layout.addSpacing(3)
        self.switch = QRadioButton(self)
        self.switch.setFixedSize(20, 20)
        self.switch.setStyleSheet('QRadioButton::indicator{ subcontrol-position:center; } QRadioButton { color: #666; }')
        self.addWidget(self.switch)
        self.addStretch()


class ApolloLabeledButton(ApolloControl):
    def __init__(self, parent, text, lines=1, callback=None, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        # Make sure the text is bottom aligned in the specified number of lines
        text = "\n" * (lines - text.count("\n") - 1) + text
        self.label = QLabel(text, self)
        self.addWidget(self.label)
        self.layout.addSpacing(3)
        self.switch = QPushButton(self)
        self.switch.setFixedSize(20, 20)
        if callback:
            self.switch.pressed.connect(callback)
        self.addWidget(self.switch)
        self.addStretch(100)


class ApolloLabeledValue(ApolloControl):
    def __init__(self, parent, text, value_text, lines=1, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        # Make sure the text is bottom aligned in the specified number of lines
        text = "\n" * (lines - text.count("\n") - 1) + text
        self.label = QLabel(text, self)
        self.addWidget(self.label)
        self.layout.addSpacing(3)
        self.value = QLineEdit(self)
        self.value.setReadOnly(True)
        self.value.setFixedSize(65, 32)
        self.value.setText(value_text)
        self.value.setAlignment(Qt.AlignCenter)
        self.layout.addWidget(self.value)


class ApolloLabeledEntry(ApolloControl):
    def __init__(self, parent, text, value_text, lines=1, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        # Make sure the text is bottom aligned in the specified number of lines
        text = "\n" * (lines - text.count("\n") - 1) + text
        self.label = QLabel(text, self)
        self.addWidget(self.label)
        self.layout.addSpacing(3)
        self.value = QLineEdit(self)
        self.value.setFixedSize(65, 32)
        self.value.setText(value_text)
        self.value.setAlignment(Qt.AlignCenter)
        self.layout.addWidget(self.value)