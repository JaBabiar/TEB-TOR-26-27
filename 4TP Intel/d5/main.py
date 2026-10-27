import sys

from PyQt6.QtWidgets import QMainWindow, QApplication
from PyQt6 import uic

class mainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        uic.loadUi("main.ui", self)
        print(self.testowyTekst.text())


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = mainWindow()
    window.show()
    sys.exit(app.exec())