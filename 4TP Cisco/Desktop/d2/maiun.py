class Osoba:
        def __init__(self, imie, nazwisko,pesel):
            self.imie = imie
            self.nazwisko = nazwisko
            self.__pesel = pesel

        def __str__(self):
            return  f"{self.imie}, {self.nazwisko}, {self.__pesel}"

osoba = Osoba("Jan", "Kowalski", "960407006769")
print(osoba)