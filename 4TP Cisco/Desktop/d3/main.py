import random
import sys
import string
from PyQt6 import uic
from PyQt6.QtWidgets import QMainWindow, QApplication
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        uic.loadUi("main.ui", self)

        self.sliderDlugosci.sliderReleased.connect(self.handleSliderChange)
        self.btnGeneruj.clicked.connect(self.handleBtnClick)

    def handleSliderChange(self):
        print(f"SlideChange {self.sliderDlugosci.value()}")
        self.labelDlugosc.setText(f"{self.sliderDlugosci.value()}")

    def handleBtnClick(self):
        wLitery = self.wLitery.isChecked()
        zSpecjalne = self.zSpecjalne.isChecked()
        cyfry = self.cyfry.isChecked()
        dl = self.sliderDlugosci.value()
        znaki = string.ascii_lowercase
        haslo = ""
        if wLitery:

            znaki += string.ascii_uppercase
        if zSpecjalne:
            znaki += string.punctuation
        if cyfry:
            znaki += string.digits
        for i in range(dl):
            haslo += random.choice(znaki)

        print(haslo)

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec())
