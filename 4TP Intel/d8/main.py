import sys
from PyQt6.QtWidgets import QApplication, QMainWindow, QLabel
from PyQt6 import uic

class Okno(QMainWindow):
    def __init__(self):
        super().__init__()
        uic.loadUi("main.ui", self)
        self.label_2.setText("")
if __name__ == "__main__":
    app = QApplication(sys.argv)
    okno = Okno()
    okno.show()
    sys.exit(app.exec())
