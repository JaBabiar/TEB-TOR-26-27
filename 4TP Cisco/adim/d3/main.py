import json

with open('testowy.txt', 'r+') as plik:
    plik.write("Rebuff time Need might of dragonsla Frozen ")
    print(plik.read())

ustawienia_gracza = {
    "Graficzne": {"Tekstury": "wysokie"},
    "Audio":{"Ogolna": 100,"Muzyka": 76, }
}

ustawienia = open('ustawienia.json', 'w+')
json.dump(ustawienia_gracza, ustawienia, indent=4)
ustawienia.close()

ustawienia_gracza = json.load(open('ustawienia.json'))

ustawienia_gracza2 = {
    "Graficzne": {
        "Tekstury": "wysokie",
    },
    "Audio": {
        "Ogolna": 100,
        "Muzyka": 76
    }
}
print(ustawienia_gracza)
print(ustawienia_gracza2)