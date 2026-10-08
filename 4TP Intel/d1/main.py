class Szkola:
    def __init__(self, szkola, miasto):
        self.szkola = szkola
        self.miasto = miasto
        self.klasy = []
    def policz_uczniow(self):
        suma = 0
        for i in range (0, len(self.klasy)):
            suma += self.klasy[i].uczniowie
        print(suma)

class Klasa:
    def __init__(self, klasa, rok, uczniowie):
        self.klasa = klasa
        self.rok = rok
        self.uczniowie = uczniowie

nazwa_szkoly = input("Podaj Nazwe szkoły: ")
miasto = input("Podaj miasto: ")

szkola = Szkola(nazwa_szkoly, miasto)
szkola.klasy.append(Klasa("4TP", 4, 17))# doda na koniec listy obiekt Klasa("")

szkola.klasy += [Klasa("2TPTUF", 2, 18)] # złączy listy [] + [Klasa("")]
print(szkola.klasy)

szkola.policz_uczniow()