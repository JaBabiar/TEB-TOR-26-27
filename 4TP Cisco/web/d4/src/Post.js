import { useState } from "react";

function Post({zdj, autor, tresc}) {
    const [likes, setLikes] = useState(0);


    function handleLike(){
        setLikes(likes+1);
    }
    return (
        <>
            <div style={{
                border: "1px soldi black",
                boxShadow: "0px 0px 16px 0px #00000067",
                padding: "12px",
                borderRadius: "24px",
                margin: "1rem"
            }}>
                <h3>{autor}</h3>
                <img src={zdj} />
                <p>{tresc}</p>
                <button onClick={handleLike}>❤️{likes}</button>
            </div>
        </>
    );
}

export default Post;
