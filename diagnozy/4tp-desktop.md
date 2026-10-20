# Arkusz Diagnozy Praktycznej: System Obsługi Turnieju

**Imię i nazwisko ucznia:** ........................................................................
**Klasa:** ........................ **Czas na wykonanie zadania:** 150 minut

## Temat zadania

Wykonaj aplikację desktopową wspomagającą rejestrację zawodników na szkolny turniej e-sportowy. Aplikacja musi składać się z dwóch zakładek: formularza zgłoszeniowego oraz listy zarejestrowanych graczy z funkcją zapisu do pliku. Projekt interfejsu wykonaj w **QtCreatorze**, a logikę zaprogramuj w języku **Python** (PyQt5/PyQt6).

### Część 1: Projektowanie interfejsu (QtCreator)

Zaprojektuj główne okno aplikacji wykorzystując widżet zakładek (`QTabWidget`). Zapisz plik interfejsu jako `turniej.ui`.

**Zakładka 1: Rejestracja zawodnika**
Formularz powinien wykorzystywać odpowiednie układy (Layouts – np. `QFormLayout` lub `QVBoxLayout`) i zawierać:

1. Pole tekstowe na **Pseudonim (Nick)** .
2. Pole tekstowe na **Adres e-mail** .
3. Listę rozwijaną na **Wybór gry**  z opcjami: *CS2, League of Legends, Valorant, Deadlock*.
4. Grupę przycisków opcji schowaną w  z wyborem poziomu: *Amator, Półprofesjonalista, Profesjonalista*.
5. Pole wyboru  z tekstem: *Akceptuję regulamin turnieju*.
6. Przycisk  oznaczony jako **Zarejestruj**.
7. Obszar komunikatów  do wyświetlania błędów lub potwierdzeń.

**Zakładka 2: Lista zawodników**

1. Widżet listy wyświetlający dodanych zawodników.
2. Przycisk oznaczony jako **Zapisz do pliku**.

### Część 2: Wymagania Dostępności (WCAG)

Aplikacja musi uwzględniać podstawowe standardy dostępności cyfrowej:

1. **Nawigacja z użyciem klawiatury:** Skonfiguruj właściwość *Tab Order* w QtCreatorze tak, aby użytkownik mógł przejść przez wszystkie pola formularza w logicznej kolejności (z góry na dół), a następnie zatwierdzić formularz klawiszem `Enter`.
2. **Czytniki ekranu:** Uzupełnij właściwość *AccessibleName* (oraz opcjonalnie *AccessibleDescription*) dla każdego pola tekstowego i przycisku, aby osoby niewidome otrzymały poprawny kontekst po najechaniu na kontrolkę.
3. **Kontrast i typografia:** Rozmiar czcionki elementów formularza nie może być mniejszy niż 11pt. Należy pozostawić domyślny, wysoki kontrast systemowy kolorów (nie nadpisuj stylów CSS wprowadzając szary tekst na białym tle).
4. **Zarządzanie fokusem:** Po udanej rejestracji i wyczyszczeniu formularza, kursor (focus) powinien automatycznie wracać do pierwszego pola (Pseudonim).

### Część 3: Zaprogramowanie logiki (Python)

Napisz skrypt `main.py`, który obsłuży zaprojektowany interfejs.

**Funkcjonalność zakładki "Rejestracja":**

1. Po kliknięciu przycisku **Zarejestruj**, skrypt musi sprawdzić, czy:
* Pole *Pseudonim* nie jest puste.
* Pole *Adres e-mail* zawiera znak `@` (opcjonalnie użyj wyrażeń regularnych - moduł `re`).
* Zaznaczono `QCheckBox` z akceptacją regulaminu.


2. Jeśli dane są niepoprawne, w obszarze komunikatów powinien pojawić się czerwony tekst wskazujący konkretny błąd (np. "Błąd: Akceptacja regulaminu jest wymagana!").
3. Jeśli dane są poprawne, aplikacja dodaje wpis do widżetu na drugiej zakładce w formacie:
`[GRA] Pseudonim (Poziom) - email` (np. `[CS2] xyz_player (Amator) - xyz@test.pl`).
4. Po udanym dodaniu formularz powinien zostać wyczyszczony, a użytkownik poinformowany o sukcesie na zielono ("Zawodnik dodany pomyślnie").

**Funkcjonalność zakładki "Lista zawodników":**

1. Po kliknięciu przycisku **Zapisz do pliku**, skrypt pobiera wszystkie elementy z listy wprowadzonych zawodników.
2. Dane są dopisywane (tryb `a` - append) do pliku tekstowego `zawodnicy.txt`.
3. Skrypt wykorzystuje obsługę wyjątków (`try...except`), aby zapobiec awarii w przypadku braku uprawnień do zapisu pliku.
