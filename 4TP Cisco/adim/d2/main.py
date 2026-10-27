from abc import ABC, abstractmethod

class Qwidget(ABC):
    def __init__(self, nazwa, x=0, y=0):
        self.nazwa = nazwa
        self.__x = x
        self.__y = y
        self.widoczny = True

    def pokaz(self):
        self.widoczny = True
        print(f"obiekt {self.nazwa} {self.widoczny}")

    def ukryj(self):
        self.widoczny = False
        print(f"obiekt {self.nazwa} {self.widoczny}")

    def przesun(self, dx, dy):
        self.__x += dx
        self.__y += dy
        if self.x < 0: self.x = 0
        if self.y < 0: self.y = 0
    @abstractmethod
    def clicked(self):
        pass

    @property
    def x(self):
        return self.__x

    @property
    def y(self):
        return self.__y
## Bez inicjowania funkcji poza stworzeniem abstrakcyjnej 
## nie bedzie opcji odpalenia class jako osobnej instancji
## jedynie jako kalasa nadrzedna 
    def clicked(self):
        pass

class QpushButton(Qwidget):
    def __init__(self, nazwa, tekst, x=0, y=0, status=True):
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
        if(type(nowa_wartosc) == bool):
            self.__status = nowa_wartosc
        else:
           raise TypeError("Wronk Tipe")
    
    def __repr__(self):
        #ALT rozwiazanie 
        #if len(self.tekst <= 10):L
        #   zmienna = self.tekst   
        #else :
        #   zmienna = self.test[0:10]+"..."
        return f"nazwa obiektu {self.nazwa} tekst: {self.tekst if len(self.tekst) <= 10 else self.tekst[0:10]+"..."} x: {self.x} y: {self.y}"

class Qlabel(Qwidget):
    def __init__(self, nazwa, tekst):
        super().__init__(nazwa)
        self.tekst = tekst
        
    def clicked(self):
        print(f"{self.nazwa} {self.tekst}")

## Do zadania 6 

class QcheckBox(Qwidget):
    def __init__(self, nazwa, zaznaczony=False):
        super().__init__(self, nazwa)
        self.zaznaczony = zaznaczony
    def clicked(self):
        self.zaznaczony = False if self.zaznaczony else True
        

p1 = QpushButton("send_btn", "tekstteksta")
p2 = QpushButton("send_btn", "tekst", 100, 100)


## Zadanie 1 
print("--Zadanie 1--")
cancel_btn = QpushButton("cancel_btn", "Anuluj", x=50, y=20)
cancel_btn.clicked()
cancel_btn.ukryj()
print(repr(cancel_btn))

## Zadanie 2 
print("--Zadanie 2--")
p1.przesun(15, 30)
print(repr(p1))

print("--Zadanie 3--")
label = Qlabel("username","TOMEDUpl#BELFE")
label.clicked()

print("--Zadanie 4--")
p1.status = False
print(p1.status)
#p1.status = "dzikEnergy"
print(p1.status)
print("--Zadanie 5--")

print("--Zadanie 6--")
cbox = QcheckBox("zapamietaj")
cbox.clicked()
print(cbox.zaznaczony)
print("--Zadanie 7--")
w = Qwidget("test")

print("--Zadanie 8--")
class Qfrom():
    def __init__(self, nazwa):
        self.nazwa = nazwa
        self.elementy = []


    def dodaj_element(self, widget):
        self.elementy.append(widget)

    def kliknij_wszystkie(self):
        for element in self.elementy:
            element.clicked()

okno = Qfrom("main_okno")
okno.dodaj_element(p1)
okno.dodaj_element(p2)
okno.dodaj_element(cancel_btn)
okno.dodaj_element(label)
okno.dodaj_element(cbox)
okno.kliknij_wszystkie()

print("--Zadanie 3--")

print("--Zadanie 3--")
