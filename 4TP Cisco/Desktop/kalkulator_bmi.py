class koszyk:
    def __init__(self):
        self.produkty = []
        self.cena = 0
    def dodaj_produkty(self,produkt):
        self.produkty.append(produkt)

    def podlicz_cene(self):
        for produkt in self.produkty:
            self.cena += produkt['cena']


produkt_1 = {"nazwa": "wiertarka", "cena": 267}
produkt_2 = {"nazwa": "kosiarka", "cena": 1267}

koszyk = koszyk()
koszyk.dodaj_produkty(produkt_1)
koszyk.dodaj_produkty(produkt_2)
koszyk.podlicz_cene()
print(koszyk.cena)
print(koszyk.produkty)