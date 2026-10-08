import sys

import PyQt6
from PyQt6 import uic
from PyQt6.QtWidgets import QApplication, QMainWindow, QLabel


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.ui = uic.loadUi("styl.ui", self)
        self.ui.show()
        self.zgloszone_osoby = []

        self.ui.CTA.clicked.connect(self.aplikuj)

    def aplikuj(self):
        imie = self.ui.lineEdit.text()
        klasa = self.ui.lineEdit_2.text()
        dane = {
            "imie": imie,
            "klasa": klasa
        }
        self.zgloszone_osoby.append(dane)
        print(self.zgloszone_osoby)

app = QApplication(sys.argv)
app.setStyle("Fusion")
window = MainWindow()
window.show()
sys.exit(app.exec())
