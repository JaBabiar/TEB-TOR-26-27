class Postac: 
    def __init__(self, nick, hp, rola,atak ):
        self.nick = nick
        self.hp = hp
        self.rola = rola
        self.atak = atak

    def sprawdz_postac(self):
        print(f"postac: {self.nick} ma role {self.rola} i ma z {self.hp} hp")

    def dodaj_hp(self, ilosc):
        self.hp += ilosc

    def atak_postac(self, cel):
        if(cel.rola == "Tank"):
            cel.hp -= cel.armor/100 * self.atak
        else:
            cel.hp -= self.atak 
            
        if(cel.hp <=0):
            print(f"{cel.nick} martwy🥀")
        

class Tank(Postac):
    def __init__(self, nick, hp, rola, atak, armor):
        super().__init__(nick, hp, rola, atak)
        self.armor = armor


postac1 = Postac("Teemo", 6, "Marksman", 12)
postac2 = Tank("Dr Mundo", 820, "Tank", 7, 60)

postac1.atak_postac(postac2)
postac2.sprawdz_postac()