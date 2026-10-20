from abc import ABC, abstractmethod

class Qwidget(ABC):
    def __init__(self, nazwa, x=0,y=0):
        self.nazwa = nazwa
        self.x = x
        self.y = y
        self.widoczny = True

    def pokaz(self):
        self.widoczny = True
        print(f"obiekt {self.nazwa} {self.widoczny}")

    def ukryj(self):
        self.widoczny = False
        print(f"obiekt {self.nazwa} {self.widoczny}")

    @abstractmethod
    def clicked(self):
        pass

class QpushButton(Qwidget):
    def __init__(self, nazwa,tekst,x=0,y=0, status=True):
        super().__init__(nazwa, x, y)
        self.tekst = tekst
        self.__status = status if status == False else True

    def clicked(self):
        if self.__status:
            print(self.tekst)
        else:
            print("Akcja zablokowana")

    @property
    def status(self):
        return self.__status

    @status.setter
    def status(self, nowa_wartosc):
        self.__status = nowa_wartosc

    def __repr__(self):
        return f"nazwa obiektu {self.nazwa} tekst: {self.tekst} x: {self.x} y: {self.y}"

p1 = QpushButton("send_btn", "tekst")
p2 = QpushButton("send_btn", "tekst", 100, 100)
print(repr(p1))
