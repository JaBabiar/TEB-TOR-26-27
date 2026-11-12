
import { useRef, useState } from 'react';
import './App.css';

function App() {
  let nazwa = useRef('');
  const [imie, setImie] = useState('Podaj Imie')

  function witajNazwa(event){
    event.preventDefault();
    setImie(nazwa.current.value);
  }
  return (
    <>
      <form onSubmit={witajNazwa}>
        <label htmlFor="nazwa">Nazwa:</label>
        <input 
          type="text"
          name='nazwa'
          id='nazwa'
          ref={nazwa}
         />
      </form>

      <p>Witaj {imie}</p>
    </>
  );
}

export default App;
