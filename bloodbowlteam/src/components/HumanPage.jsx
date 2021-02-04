import React, { useState, useEffect } from "react";
import axios from "axios";
import {
  Div,
  H1,
  H2,
  H3,
  P,
  PPlayer,
  Section,
  Table,
  Td,
  Th,
} from "../styled-components/HumanPage";

export default function HumanPage() {
  const [descriptionRace, setDescriptionRace] = useState([]);
  const [descriptionEquipe, setDescriptionEquipe] = useState([]);

  const [loading, setLoading] = useState(false);

  useEffect(() => {
    setLoading(true);
    axios({
      method: "GET",
      url: `http://localhost:5050/teams/1`,
    }).then((res) => {
      console.log(res.data);
      setDescriptionRace(res.data);
      setLoading(false);
    });
  }, [setDescriptionRace]);

  useEffect(() => {
    setLoading(true);
    axios({
      method: "GET",
      url: `http://localhost:5050/players/1`,
    }).then((res) => {
      console.log(res.data);
      setDescriptionEquipe(res.data);
      setLoading(false);
    });
  }, [setDescriptionEquipe]);

  return (
    <Div>
      <div>
        {loading && <p>Loading</p>}
        {!loading && (
          <>
            {descriptionRace.map((description) => (
              <div>
                <Section>
                  <H1>{description.race_name}</H1>

                  <div>
                    <H2>Description</H2>
                    <P>{description.race_description}</P>
                  </div>
                  <div>
                    <H2>Strenght</H2>
                    <P>{description.race_strengths}</P>
                  </div>
                  <div>
                    <H2>Weaknesses</H2>
                    <P>{description.race_weaknesses}</P>
                  </div>
                </Section>
              </div>
            ))}
          </>
        )}
      </div>
      {descriptionEquipe.map((equipe) => (
        <div>
          <Section>
            <H1>players</H1>

            <H3>{equipe.price}</H3>
            <PPlayer>{equipe.role_name}</PPlayer>
            <H2>Price</H2>
            <P>{equipe.price}</P>

            <H2>Statistic</H2>
            <Table>
              <tr>
                <Th>M</Th>
                <Th>F</Th>
                <Th>AG</Th>
                <Th>VA</Th>
              </tr>
              <tr>
                <Td>{equipe.m}</Td>
                <Td>{equipe.f}</Td>
                <Td>{equipe.ag}</Td>
                <Td>{equipe.va}</Td>
              </tr>
            </Table>
          </Section>
        </div>
      ))}
    </Div>
  );
}
