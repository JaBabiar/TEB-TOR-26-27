
import  random


class Pizza:
    def __init__(self, skibidtoilet):
        self.nazwa = "Pizza " + skibidtoilet
        self.cena = random.randint(1, 200)
        SELF.KWALKI = 8
    def podziel(self, osoby):



tablicaPizza = [
"4 Sery", "Szynka", "Szefowska"
]
obiektyPizza = []

for el in tablicaPizza:
    obiektyPizza.append(Pizza(el))

for i in range(len(obiektyPizza)):
    print(obiektyPizza[i])




