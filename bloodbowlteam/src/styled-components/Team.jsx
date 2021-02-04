import styled from "styled-components";

export const Race = styled.div`
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
`;

export const H2 = styled.div`
  font-size: 10vh;
  padding-top: 5vh;
  text-align: center;
`;

export const H3 = styled.div`
  font-size: 7vh;
  padding-top: 1vh;
  text-align: center;
`;
export const Img = styled.img`
  margin-top: 7vh;
  border-radius: 55%;
  width: 45vh;
  cursor: pointer;
  &:hover {
    opacity: 0.7;
    transition-duration: 0.8s;
  }
`;

export const A = styled.a`
  text-decoration: none;
  color: black;
  &:hover {
    color: white;
    text-shadow: 2px 2px 4px #000000;
    transition-duration: 0.8s;
  }
`;
