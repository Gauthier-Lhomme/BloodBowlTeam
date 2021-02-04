import React, { useState, useEffect } from "react";
import axios from "axios";

export default function HumanPage(){
    

    const [descriptionRace, setDescriptionRace] = useState([]);
    const [loading, setLoading] = useState(false);

    useEffect(() => {
        setLoading(true);
        axios({
          method: "GET",
          url: `http://localhost:5050/human-describe`,
        }).then((res) => {
          console.log(res.data);
          setDescriptionRace(res.data);
          setLoading(false);
        });
      }, [setDescriptionRace]);
    
    return(
        <div>

        </div>
    )
}