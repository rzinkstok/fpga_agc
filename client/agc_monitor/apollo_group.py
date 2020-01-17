from PySide2.QtWidgets import QWidget, QVBoxLayout, QHBoxLayout, QLabel, QFrame, QSizePolicy
from PySide2.QtGui import QPainter, QColor, QRadialGradient, QBrush, QPen, QFont, QFontMetrics
from PySide2.QtCore import QPointF, Qt, QRect, QSize


class ApolloGroupHeading(QWidget):
    def __init__(self, parent, text, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        self.setSizePolicy(
            QSizePolicy.MinimumExpanding,
            QSizePolicy.Fixed
        )

        self.text = text
        self.font = QFont()
        self.font.setFamily('Futura Std Medium')
        self.font.setPointSize(10)
        self.font_metrics = QFontMetrics(self.font)
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
    def __init__(self, parent, text, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        layout = QVBoxLayout()
        layout.setSpacing(0)
        layout.setMargin(0)
        layout.setContentsMargins(0, 0, 0, 0)

        self.heading = ApolloGroupHeading(parent, text)
        layout.addWidget(self.heading)

        layout.addSpacing(4)

        self.frame = QFrame(parent)
        layout.addWidget(self.frame)
        self.framelayout = QHBoxLayout()
        self.framelayout.setMargin(0)
        self.framelayout.setSpacing(10)
        self.frame.setLayout(self.framelayout)

        layout.addStretch()

        self.setLayout(layout)

    def addWidget(self, w):
        self.framelayout.addWidget(w)
