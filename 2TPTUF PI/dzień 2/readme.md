# Przypomnienie wiadomości 

## HTML 
* Szablon strony `! + enter` lub `ctrl + spacja`
* Podstawowe Bloki Semantyczne
    * `<header>` - Nagłówek Strony lub sekcji 
    * `<nav>` = Blok nawigacji z linkami
    * `<main` - Główna treść strony
    * `<aside>` - boczny panel
    * `<section>` - niezależna sekcja strony 
    * `<article>` - np. News, odnośnik do posta
    * `<footer>` - Stopka strony
    * `<h1> do <h6>` - H1 wykorzystujemy jedynie raz na stronie
* w bloku html można dodać różne parametry, najczęściej ID oraz class 
    * `<div id="blok1" class="block">`

## CSS
* Stylowanie po bloku, najmniej specyficzne 
```css
div{
    width: 100%;
    background: pink;
}
```
* Bardziej specyficzne, do klasy 
```css
.block{
    width: 50%;
    background: red;
}
```
  Najbardziej specyficzne, do ID
```css
#blok1{
    width: 50%;
    background: red;
}
```


## JS 
Przykładowe zdarzenie 
QuerySelector - Ten sam selector co w CSS
```js
    let blok = document.querySelector("#blok1")
    blok.addEventListener("click", function () {
        console.log("Blok Klikniety")
    })

```
## Metody układania bloków
**`display: flow-root`**
* zamyka opływanie bloków 
* działa z `float:left/right/center/start/end`
* Blokuje zapadanie sie bloków przed i po
****`display: flex`**
* Automatycznie rozszerza bloki
* Trzyma bloki w jednej lini o ile nie mamy `flex-wrap:wrap`
* możliwość ustawienia w kolumne za pomoca `flex-direction:colum`