import { Reset } from "styled-reset";
import Navbar from "./components/Navbar";
import { AppDiv } from "./styled-components/App";

function App() {
  return (
    <AppDiv>
      <Reset />
      <Navbar />
    </AppDiv>
  );
}

export default App;
