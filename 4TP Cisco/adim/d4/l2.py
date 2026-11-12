slowa= ["Artiem", "zakola","CS2", "Kebab na cienkim", "marianDB"]

print(sorted(slowa, key=lambda s: len(s), reverse=True))

class Player:
    def __init__(self, nickname,rola,kd_ratio):
        self.nickname = nickname
        self.rola = rola
        self.kd_ratio = kd_ratio

    def __repr__(self):
        return f"nick: {self.nickname} {self.rola} KD: {self.kd_ratio}"
team= [
    Player("Kiin", "TOP", 7.4),
    Player("Canyon", "JG", 9.6),
    Player("Chovy", "MID", 6.4),
    Player("Ruler", "ADC", 7.7),
    Player("Duro", "SUPPORT", 7.4),
]

po_kd = sorted(team, key=lambda player: player.kd_ratio, reverse=True)


