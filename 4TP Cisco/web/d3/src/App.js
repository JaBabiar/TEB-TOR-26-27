import { useState } from 'react';
import './App.css';

function App() {
  const [tryb, zmienTryb] = useState("light")
  function handleZmianaTrybu(){
  /*  if(tryb == "light"){
      tryb = "dark"
    } else {
      tryb = "light"
    }
      */
  
    tryb == "light" ? zmienTryb("dark") : zmienTryb("light");
    console.log(tryb)
  }

  return (
    <>
    <div id="canvas" style={tryb == "light" ? 
      {"background-color": "rgb(238, 205, 240)"} : 
      {"background-color": "rgb(17, 50, 15)"}
      }>
      <button onClick={handleZmianaTrybu}>Zmien Tryb</button>
    </div>
    </>
  );
}

export default App;
