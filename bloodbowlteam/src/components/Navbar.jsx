import {
  DivMenu,
  DivTitle,
  H1,
  Li,
  LinkNav,
} from "../styled-components/Navbar";

export default function Navbar() {
  return (
    <div>
      <DivTitle>
        <H1>Blood Bowl Team</H1>
      </DivTitle>
      <DivMenu>
        <nav>
          <ul>
            <Li>
              <LinkNav to="/">Home</LinkNav>
            </Li>
            <Li>
              <LinkNav to="/news">News</LinkNav>
            </Li>
            <Li>
              <LinkNav to="/teams">Races</LinkNav>
            </Li>
            <Li>
              <LinkNav to="/">FAQ</LinkNav>
            </Li>
          </ul>
        </nav>
      </DivMenu>
    </div>
  );
}
