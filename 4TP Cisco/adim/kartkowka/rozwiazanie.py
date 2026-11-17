class Terrarium:
    def __init__(self, kod_zbiornika, biotop,max_gatunkow):
        self.kod_zbiornika = kod_zbiornika
        self.biotop = biotop
        self.max_gatunkow = max_gatunkow
        self.obsada = []

    def wprowadz_gatunek(self, nazwa_gatunku):
        if len(self.obsada) >= self.max_gatunkow:
            print("Błąd: Brak miejsca w terrarium!")
            return False
        if nazwa_gatunku in self.obsada:
            print(f"Błąd: Gatunek {nazwa_gatunku} już tu mieszka!")
            return False
        self.obsada.append(nazwa_gatunku)
        print(f"Wprowadzono: {nazwa_gatunku}")

    def wsiedl_grupe(self, lista_gatunkow):
        if len(self.obsada)+len(lista_gatunkow) >= self.max_gatunkow:
            print("Błąd: Zbyt małe terrarium na całą nową grupę!")
            return False
        self.obsada += lista_gatunkow
        return True

    def __str__(self):
        if len(self.obsada) == 0:
            return f"Terrarium [{self.kod_zbiornika}] ({self.biotop}) jest puste."
        else:
            return f"Terrarium {self.kod_zbiornika} ({self.biotop}): zasiedlenie {len(self.obsada)}/{self.max_gatunkow}"



moje_terrarium = Terrarium("BIO-04", "Las deszczowy", 5)

print(moje_terrarium)

moje_terrarium.wprowadz_gatunek("Liściec olbrzymi")
moje_terrarium.wprowadz_gatunek("Liściec olbrzymi")

moje_terrarium.wsiedl_grupe(["Patyczak rogaty", "Modliszka storczykowa", "Kruszczyca"])
moje_terrarium.wsiedl_grupe(["Krocionóg olbrzymi", "Ptasznik białokolanowy"])

moje_terrarium.wprowadz_gatunek("Straszyk australijski")

moje_terrarium.wprowadz_gatunek("Ślimak afrykański")

print(moje_terrarium)
