import { DivSidebar, Img, P } from "../styled-components/Sidebar";
import human from "../assets/image/human.png";
export default function Sidebar() {
  return (
    <DivSidebar>
      <P>Inscription / Connection</P>
      <Img src={human} alt="" />
    </DivSidebar>
  );
}
