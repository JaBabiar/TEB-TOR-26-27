function Produkt({obraz, nazwa, producent, cena, addKoszyk}) {
    let item = {
        "nazwa": nazwa,
        "producent": producent,
        "cena": cena,
    }
    return (
    
    <>
    <div>
        <div className="img">
            <img src={obraz}/>
        </div>
        <div className="content">
            <h3>
                {nazwa}
            </h3>
            <p>
                {producent}
            </p>
            <p>
                {cena}
            </p>
            <button onClick={addKoszyk({item})}>Dodaj do koszyka</button>
        </div>
    </div>
    </>
  );
}

export default Produkt;
