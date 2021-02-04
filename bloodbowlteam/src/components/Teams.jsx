import Sidebar from "./Sidebar";
import React, { useState, useEffect } from "react";
import axios from "axios";
import { H2, H3, A, Img, Race } from "../styled-components/Team";

export default function Teams() {
  const [races, setRaces] = useState([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    setLoading(true);
    axios({
      method: "GET",
      url: `http://localhost:5050/teams`,
    }).then((res) => {
      console.log(res.data);
      setRaces(res.data);
      setLoading(false);
    });
  }, [setRaces]);

  return (
    <div>
      <div>
        <H2>Races</H2>
      </div>
      <Race>
        {loading && <p>Loading</p>}
        {!loading && (
          <>
            {races.map((race) => (
              <div>
                <Img src={race.image_race} alt="image" />
                <A href="">
                  <H3>{race.race_name}</H3>
                </A>
              </div>
            ))}
          </>
        )}
      </Race>
    </div>
  );
}
