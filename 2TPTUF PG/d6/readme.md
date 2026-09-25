# Zadanie Projektowe

## CZ1 - Baza
- Stwórz bazę danych panel_teb_cms
- Stwórz tabele Users zawierajaca login i haslo (hashowane) oraz id i role
- Stwórz tabele posts zawierajaca id, tytuł oraz treść posta 

## Cz2 - login.php
- zawiera formularz logowania 
- formularz sprawdza czy login i haslo sa w bazie danych 
- poprawne logowanie przesyła na strone panel.php

## Cz3 - panel.php 
- Zawiera formularz dodajacy dane do bazy
- zablokowany dla nie zalgowanych userow 
- po poprawnym wyslaniu formularza pozwala na dodanie kolejnego 

## Cz4 - index.php
- wyświetla 3 najnowsze posty
- ostylowane poprawnie

## Cz5 - Wymagania techniczne
- Storna panel.php zabezpieczona przed włamaniem 
- status zalogowania pozostaje w sesji 
  
## Rozwiazanie 

### Cz1 - Baza danych
```sql
CREATE TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
    login varchar(64) UNIQUE NOT NULL,
    pass varchar(255) NOT NULL,
    rola varchar(32) NOT NULL
);

CREATE TABLE posts(
	id INT AUTO_INCREMENT PRIMARY KEY,
    title varchar(128) NOT null,
	tresc TEXT NOT NULL
)
INSERT INTO users(login, pass, rola) VALUES ("admin", "$argon2id$v=19$m=32768,t=3,p=1$jV8OFGqtM2p374R0Tof2nw$LhF45TksuJPRYyobI5rqGYDI2003kbD+EpFr5mrn8bw", "admin")

--- Haslo to admin24 wykonane hashem argon2id
```