# Zadanie Praktyczne: Menedżer i Generator Haseł w PyQt6

W ramach tego zadania stworzysz aplikację desktopową służącą do generowania bezpiecznych haseł oraz zapisywania ich w bazie plików tekstowych.

---

## **Etap 1: Projektowanie Interfejsu (Qt Designer)**

Stwórz plik interfejsu o nazwie `safepass.ui` w programie **Qt Designer** (szablon *Main Window* lub *Widget*).

### **Wymagane Komponenty i Nazwy Obiektów (`objectName`):**

| Typ Widżetu | `objectName` | Funkcja / Tekst w GUI |
| :--- | :--- | :--- |
| **QLineEdit** | `input_serwis` | Pole do wpisania nazwy serwisu/konta (np. *Facebook*, *Gmail*) |
| **QSlider** | `slider_dlugosc` | Suwak (ustaw w panelu właściwości: `minimum = 6`, `maximum = 32`, `value = 12`) |
| **QLabel** | `label_dlugosc_wartosc` | Etykieta wyświetlająca aktualną długość (domyślny tekst: `Długość: 12`) |
| **QCheckBox** | `check_znaki` | Pole wyboru (tekst: `Uwzględniaj znaki specjalne (!@#$)`) |
| **QPushButton** | `btn_generuj` | Przycisk wyzwalający generowanie (tekst: `Generuj Hasło`) |
| **QLineEdit** | `input_wynik_hasla` | Pole tekstowe na wygenerowane hasło (włącz właściwość `readOnly = True`) |
| **QPushButton** | `btn_zapisz` | Przycisk zapisu (tekst: `Zapisz do bazy`) |
| **QListWidget** | `list_zapisane` | Lista z podglądem zapisanych kont i haseł |
| **QLabel** | `label_status` | Etykieta komunikatów na dole okna (domyślnie pusta) |

> **Wskazówka:** Uporządkuj elementy za pomocą układów (*Layouts*: `QVBoxLayout`, `QHBoxLayout` lub `QFormLayout`), aby interfejs był estetyczny.

---

## **Etap 2: Logika Aplikacji w Pythonie (`main.py`)**

Utwórz plik `main.py` w tym samym folderze co plik `safepass.ui`.

### **Zakres Funkcjonalności:**
1. **Dynamiczna zmiana etykiety suwaka:** Przesunięcie suwaka powinno na żywo aktualizować tekst w `label_dlugosc_wartosc`.
2. **Generowanie hasła:** Kliknięcie `btn_generuj` tworzy losowy ciąg o długości z suwaka. Jeżeli `check_znaki` jest zaznaczony, dodawane są znaki specjalne (`string.punctuation`).
3. **Zapis do pliku:** Kliknięcie `btn_zapisz` dopisuje do pliku `baza_hasel.txt` nową linię w formacie: `Serwis: [nazwa] | Hasło: [hasło]`.
4. **Odświeżanie listy:** Po każdym zapisie oraz przy starcie aplikacji, program wczytuje zawartość pliku `baza_hasel.txt` i wyświetla go w `list_zapisane`.
