import { useState } from 'react';
import './App.css';
import Produkt from './Produkt';

function App() {
  const [koszyk, setKoszyk] = useState([])

  function handleAddKoszyk(item){
    
  }
  return (

    <>

      <Produkt
        link="aa"
        nazwa="Kosiarka"
        producent="Zelmer"
        cena={299.99}
        addKoszyk={handleAddKoszyk}
      />

      <Produkt
        link="aa"
        nazwa="Pluszka Tripple T"
        producent="SiSeweEntertainmnent"
        cena={68.99}
        addKoszyk={handleAddKoszyk}
      />

      <Produkt
        link="aa"
        nazwa="Czapa ziomowa"
        producent="Woll"
        cena={29.99}
        addKoszyk={handleAddKoszyk}
      />

      <Produkt
        link="aa"
        nazwa="Civic"
        producent="Honda"
        cena={30000}
        addKoszyk={handleAddKoszyk}
      />
    </>
  );
}

export default App;
