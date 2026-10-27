## **Lista Zadań**

### **Zadanie 1: Pierwsze obiekty i wywołania (Poziom: Bardzo łatwy)**
Utwórz nowy obiekt klasy `QpushButton` o nazwie `"cancel_btn"`, tekście `"Anuluj"` i współrzędnych `x=50, y=20`. 
Wykonaj na nim następujące operacje:
1. Wywołaj metodę `clicked()`.
2. Wywołaj metodę `ukryj()`.
3. Wyświetl jego reprezentację tekstową za pomocą `print(repr(...))`.

---

### **Zadanie 2: Przesuwanie widżetu (Poziom: Łatwy)**
Dopisz do klasy bazowej `Qwidget` metodę `przesun(dx, dy)`, która zmienia położenie obiektu, dodając `dx` do `self.x` oraz `dy` do `self.y`. 
Sprawdź działanie tej metody na obiekcie `p1` (przesuń go o `15` w prawo i `30` w dół, a następnie wyświetl `repr(p1)`).

---

### **Zadanie 3: Nowa klasa pochodna – `Qlabel` (Poziom: Łatwy)**
Utwórz nową klasę `Qlabel`, która dziedziczy po `Qwidget`. 
1. Klasa powinna przyjmować w `__init__` dodatkowy parametr `tekst`.
2. Zaimplementuj wymaganą metodę abstrakcyjną `clicked()`, która wyświetli w konsoli tekst: `"Etykieta [nazwa]: [tekst]"`.
3. Utwórz obiekt tej klasy i wywołaj na nim metodę `clicked()`.

---

### **Zadanie 4: Walidacja w Setterze (Poziom: Średni)**
W klasie `QpushButton` zmodyfikuj setter właściwości `status` (`@status.setter`). 
Zadbaj o to, aby przy próbie przypisania wartości, która **nie jest** typu boolowskiego (`bool`), wyświetlał się komunikat o błędzie (lub podnoszony był wyjątek `TypeError`) i status nie ulegał zmianie.

---

### **Zadanie 5: Skracanie tekstu w `__repr__` (Poziom: Średni)**
Zmieniaj metodę `__repr__` w klasie `QpushButton` tak, aby w przypadku gdy `tekst` jest dłuższy niż 10 znaków, wyświetlała tylko pierwsze 10 znaków z dodanymi wielokropkami na końcu (np. `"Zatwierdź formularz"` -> `"Zatwierdź ..."`).

---

### **Zadanie 6: Kolejna klasa pochodna – `QcheckBox` (Poziom: Średni)**
Utwórz klasę `QcheckBox` dziedziczącą po `Qwidget`:
1. W konstruktorze dodaj atrybut `zaznaczony` (domyślnie `False`).
2. Zaimplementuj metodę `clicked()`, która przy każdym wywołaniu zmienia stan `zaznaczony` na przeciwny (z `True` na `False` i odwrotnie) oraz wypisuje aktualny stan w konsoli.

---

### **Zadanie 7: Próba instancjonowania klasy abstrakcyjnej (Poziom: Średnio-zaawansowany)**
Napisz kod, który spróbuje utworzyć bezpośredni obiekt klasy `Qwidget` (np. `w = Qwidget("test")`). 
1. Co się stanie po uruchomieniu programu?
2. Napisz w komentarzu krótkie wyjaśnienie, dlaczego tak się dzieje i jaką rolę odgrywa `@abstractmethod`.

---

### **Zadanie 8: Kontener na widżety – `QForm` (Poziom: Zaawansowany)**
Stwórz nową klasę `QForm` (nie dziedziczy po `Qwidget`), która reprezentuje okno aplikacji:
1. Posiada listę `elementy`, do której można dodawać obiekty klas pochodnych `Qwidget` za pomocą metody `dodaj_element(widget)`.
2. Posiada metodę `kliknij_wszystkie()`, która pętlą `for` przejdzie po wszystkich dodanych elementach i wywoła na każdym z nich metodę `clicked()`.

---

### **Zadanie 9: Zaawansowana enkapsulacja i reset pozycji (Poziom: Zaawansowany)**
Zabezpiecz atrybuty `x` oraz `y` w klasie `Qwidget`, czyniąc je prywatnymi (`__x`, `__y`).
1. Utwórz właściwości (property) pozwalające na odczyt `x` oraz `y`.
2. Blokuj możliwość ustawienia współrzędnych ujemnych (jeśli użytkownik poda wartość mniejszą niż 0, współrzędna powinna zostać ustawiona na `0`).
3. Zaktualizuj pozostałe metody w klasie, aby korzystały z nowych właściwości.

---

### **Zadanie 10: System zdarzeń i Magiczna metoda `__call__` (Poziom: Ekspert)**
Dodaj do klasy `QpushButton` możliwość przypisania funkcji (tzw. *callback*), która ma się wykonać podczas kliknięcia.
1. Zmodyfikuj konstruktor `QpushButton`, aby przyjmował opcjonalny argument `on_click_action` (domyślnie `None`).
2. Przesłoń metodę `__call__` tak, aby wywołanie obiektu jak funkcji (np. `p1()`) działało dokładnie tak samo jak wywołanie `p1.clicked()`.
3. Podczas wywołania `clicked()`, jeśli `status` jest `True` oraz przypisano `on_click_action`, wywołaj tę przekazaną funkcję.
