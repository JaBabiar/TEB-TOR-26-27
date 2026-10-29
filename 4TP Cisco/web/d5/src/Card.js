function Card({nazwa, producent, cena, setKasa}) {
  
  
    return (
    <>
        <div style={cena > 9 ? {"background": "red"} : {"background": "green"}}>
            <h3>{nazwa}</h3>
            <p>{producent}</p>
            <p>{cena}</p>
            <button onClick={(e) => setKasa(cena)}>Kup</button>
        </div>
    </>
  );
}

export default Card;
