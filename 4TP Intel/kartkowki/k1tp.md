
## Zadanie 1: Klasa `Serwer` z walidacją pojemności i sesji (Poziom: Zaawansowany)

**Opis scenariusza:**
Zaprojektuj klasę `Serwer`, która będzie zarządzać aktywnymi sesjami użytkowników. Serwer ma ograniczoną pojemność, a jeden użytkownik nie może być zalogowany dwukrotnie.

### Wymagania:

1. **Konstruktor (`__init__`)**:
   * Przyjmuje 3 argumenty: `nazwa_hosta`, `adres_ip` oraz `max_sesji` (maksymalna liczba użytkowników jako liczba całkowita).
   * Inicjalizuje atrybuty, w tym `zalogowani` jako pustą listę.

2. **Metoda `zaloguj_uzytkownika(self, nick)`**:
   * Zanim dodasz użytkownika do listy, sprawdź dwa warunki:
     * Czy lista `zalogowani` osiągnęła już limit `max_sesji`? Jeśli tak, wypisz: `"Błąd: Serwer pełny!"` i przerwij dodawanie.
     * Czy podany `nick` znajduje się już na liście `zalogowani`? Jeśli tak, wypisz: `"Błąd: Użytkownik [nick] jest już zalogowany!"`.
   * Jeśli oba warunki są spełnione, dodaj nick na koniec listy (odpowiednią metodą dla pojedynczego elementu) i wypisz: `"Zalogowano: [nick]"`.

3. **Metoda `zaloguj_grupe(self, lista_nickow)`**:
   * Metoda przyjmuje gotową listę nicków.
   * Zanim ją dodasz, sprawdź, czy serwer pomieści **wszystkich** nowych użytkowników (czyli czy suma obecnych i nowych nie przekracza `max_sesji`).
   * Jeśli się nie zmieszczą, wypisz: `"Błąd: Brak miejsca na serwerze dla całej grupy!"`.
   * Jeśli się zmieszczą, trwale dołącz nową listę do obecnej, korzystając z odpowiedniego operatora lub metody rozszerzającej (bez użycia pętli).

4. **Metoda reprezentacji (`__str__`)**:
   * Jeśli serwer jest całkowicie pusty (0 sesji), ma zwracać tekst: 
     `"Serwer [nazwa_hosta] ([adres_ip]) jest w trybie czuwania (pusty)."`
   * Jeśli na serwerze jest zalogowany przynajmniej jeden użytkownik, ma zwracać: 
     `"Serwer [nazwa_hosta] ([adres_ip]): zajęte sesje [aktualna_liczba]/[max_sesji]."`

---

### Kod testowy (wklej na dole swojego pliku `main.py` i uruchom):

```python
# 1. Inicjalizacja serwera z limitem 5 miejsc
moj_serwer = Serwer("UBUNTU-PROD", "192.168.0.50", 5)

# 2. Test reprezentacji pustego serwera
print(moj_serwer)

# 3. Testowanie logiki dodawania
moj_serwer.zaloguj_uzytkownika("admin")
moj_serwer.zaloguj_uzytkownika("admin")  # Powinno wyrzucić błąd duplikatu

# 4. Testowanie dodawania grupy
moj_serwer.zaloguj_grupe(["dev1", "dev2", "tester"]) 
moj_serwer.zaloguj_grupe(["stazysta1", "stazysta2"]) # Powinno wyrzucić błąd pojemności (byłoby 6/5)

# 5. Sprawdzenie finalnego stanu
moj_serwer.zaloguj_uzytkownika("dyrektor") # Tu powinno wejść (będzie 5/5)
moj_serwer.zaloguj_uzytkownika("haker")    # Tu błąd pełnego serwera (6/5)

print(moj_serwer)
```
