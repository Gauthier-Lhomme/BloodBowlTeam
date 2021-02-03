import { DivMenu, DivTitle, H1, Li, A } from "../styled-components/Navbar";

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
              <A href="#">Menu</A>
            </Li>
            <Li>
              <A href="#">News</A>
            </Li>
            <Li>
              <A href="#">Les Races</A>
            </Li>
            <Li>
              <A href="#">FAQ</A>
            </Li>
          </ul>
        </nav>
      </DivMenu>
    </div>
  );
}
