#Stwórz bazę danych z losowymi produktami/użytkownikami lub wklej moja 
```sql
CREATE DATABASE sklep;
USE sklep;

CREATE TABLE produkty (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(100) NOT NULL,
    cena DECIMAL(10,2) NOT NULL
);

INSERT INTO produkty (nazwa, cena) VALUES
('Myszka bezprzewodowa', 59.99),
('Klawiatura mechaniczna', 189.00),
('Monitor 24 cale', 499.50),
('Podkładka pod mysz XL', 35.00),
('Słuchawki nauszne', 129.90),
('Kabel HDMI 2m', 19.99),
('Dysk SSD 500GB', 169.00),
('Pamięć RAM 16GB', 145.50),
('Kamera internetowa HD', 89.00),
('Głośniki komputerowe 2.0', 75.00);
```

## PHP
- Stwórz formularz z jednym polem i przyciskiem
  - Pole: Nazwa produktu
po wyszukaniu prześlij dane z formualrza do zapytania
wynik zapytania wyświetl na stronie

!!! UWAGA - Sprawdź czy zmienna nazwa istnieje za pomocą funkcji isset przed wysłaniem zapytania do bazy 
