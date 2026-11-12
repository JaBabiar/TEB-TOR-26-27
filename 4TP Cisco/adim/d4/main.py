def podwoj(x):
    return x*2

podwoj_l = lambda x:x*2
print(podwoj(5))
print(podwoj_l(10))

## Zadanie 1

def kwadrat(x):
    return x** 2

def parzysta(x):
    return x%2==0

def polacz_tekst(t1,t2):
    return f"{t1} {t2}"

### Rozwiazanie
l_kwadrat = lambda x:x**2
l_parzysta = lambda x: x%2==0
l_polacz_tekst = lambda t1, t2: f"{t1} {t2}"

print(l_kwadrat(5))
print(l_parzysta(5))
print(l_polacz_tekst("Jan", "Kowalski"))

# main scheme zmienna = lambda **args: Funkcja z auto return


# map i filter
# filter(funkcja filtrujaca,lista) - filtruje liste wg algorytmu
# map (Przeksztalcenie, lista) - przeksztalca liste wg algorytmu
# obie funkcje zapisujemy w list( )
temperatury_w_toruniu = [
    {"dzien": "2026-10-11", "temperatura": 11.5},
    {"dzien": "2026-10-12", "temperatura": 12.0},
    {"dzien": "2026-10-13", "temperatura": 10.8},
    {"dzien": "2026-10-14", "temperatura": 9.5},
    {"dzien": "2026-10-15", "temperatura": 9.0},
    {"dzien": "2026-10-16", "temperatura": 10.2},
    {"dzien": "2026-10-17", "temperatura": 11.0},
    {"dzien": "2026-10-18", "temperatura": 12.5},
    {"dzien": "2026-10-19", "temperatura": 13.1},
    {"dzien": "2026-10-20", "temperatura": 10.5},
    {"dzien": "2026-10-21", "temperatura": 9.8},
    {"dzien": "2026-10-22", "temperatura": 8.5},
    {"dzien": "2026-10-23", "temperatura": 7.2},
    {"dzien": "2026-10-24", "temperatura": 8.0},
    {"dzien": "2026-10-25", "temperatura": 8.8},
    {"dzien": "2026-10-26", "temperatura": 9.2},
    {"dzien": "2026-10-27", "temperatura": 7.5},
    {"dzien": "2026-10-28", "temperatura": 6.8},
    {"dzien": "2026-10-29", "temperatura": 6.0},
    {"dzien": "2026-10-30", "temperatura": 5.5},
    {"dzien": "2026-10-31", "temperatura": 5.2},
    {"dzien": "2026-11-01", "temperatura": 6.0},
    {"dzien": "2026-11-02", "temperatura": 6.5},
    {"dzien": "2026-11-03", "temperatura": 5.8},
    {"dzien": "2026-11-04", "temperatura": 4.5},
    {"dzien": "2026-11-05", "temperatura": 3.8},
    {"dzien": "2026-11-06", "temperatura": 4.2},
    {"dzien": "2026-11-07", "temperatura": 4.0},
    {"dzien": "2026-11-08", "temperatura": 3.5},
    {"dzien": "2026-11-09", "temperatura": 3.0}
]


pow_10 = list(filter(lambda t: t["temperatura"] >= 10,temperatury_w_toruniu))

fahrenheit = list(map(lambda t: (t['temperatura']*9/5) +32, pow_10))

print(fahrenheit)
print(pow_10)

### Zadanie 3
"""
Stwórz listę 
[
{"osoba": "jan Kowalski", oceny: [1,4,5]},
{"osoba": "jan Kowalski", oceny: [1,4,5]},
{"osoba": "jan Kowalski", oceny: [1,4,5]},
]
filtruj osoby ktore maja srednia powyżej 4.75 jako osoby z paskiem
zmapuj liste filtrowanych osob tak by zawierala jedynie imie i nazwisko
"""