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
   
    def __str__(self):
        return f"Klasa {self.klasa} liczy łacznie {self.uczniowie} uczniów"

    def __lt__(self,other):
        if(self.uczniowie < other.uczniowie):
            return f"Klasa {self.klasa} jest mniejsza od {other.klasa}"
        else:
            return f"Klasa {other.klasa} jest mniejsza od {self.klasa}"
    @property
    def doKonca(self):
        return 5-self.rok
        
nazwa_szkoly = input("Podaj Nazwe szkoły: ")
miasto = input("Podaj miasto: ")

klasa1 = Klasa("4TP", 4, 17)
klasa2 = Klasa("2TPTUF", 2, 18)
szkola = Szkola(nazwa_szkoly, miasto)
szkola.klasy.append(klasa1)# doda na koniec listy obiekt Klasa("")
szkola.klasy += [klasa2] # złączy listy [] + [Klasa("")]
print(szkola.klasy)

print("------------------")

print(klasa1)
print(klasa1 < klasa2)
print(klasa1.doKonca)
print(klasa2.doKonca)
szkola.policz_uczniow()