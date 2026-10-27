import sys
import json
from PyQt6.QtWidgets import QApplication, QMainWindow, QSlider
from PyQt6 import uic

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        uic.loadUi("untitled.ui", self)
        self.pass_len.sliderReleased.connect(self.handleSliderReleased)
        self.save_btn.clicked.connect(self.handleSaveBtn)

    def handleSliderReleased(self):
        print(self.pass_len.value())

    def handleSaveBtn(self):
        serwis = self.serwis.text()
        passwd = self.passwd.text()
        self.saveToFile({"serwis": serwis, "haslo": passwd})

    def saveToFile(self,new_data ):
        print(new_data)
        with open("save.txt", "w+") as f:
            data = f.read()
            data += new_data
            f.write(json.encode(data))
            f.close()




if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec())
