import Card from "./Card";
import { useState } from "react";

function App() {
  const [kasa, setKasa] = useState(10);

  function handleZakup(koszt) {
      if(kasa <= 0 || (kasa-koszt) < 0){
        alert("biedak");
        return;
        
      }
      setKasa(kasa-koszt)
  } 

  return (
    <>
    <h1>Witaj Goju, Masz aktualnie {kasa}</h1>
      <Card
        nazwa={"Fortnite Freddy Fazbear"}
        producent={"FNAF"}
        cena={99.99}
        setKasa={handleZakup}
      />

      <Card
        nazwa={"Hot Dog z żabki"}
        producent={"żabka"}
        cena={9.99}
        setKasa={handleZakup}
      />
      <Card
        nazwa={"Dzik Cola 2L"}
        producent={"WK Dzik"}
        cena={5.49}
        setKasa={handleZakup}
      />

    </>
  );
}

export default App;
