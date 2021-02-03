import { Reset } from "styled-reset";
import MainPage from "./components/MainPage";
import Navbar from "./components/Navbar";
import News from "./components/News";
import { AppDiv } from "./styled-components/App";

function App() {
  return (
    <AppDiv>
      <Reset />
      <Navbar />
      <News />
    </AppDiv>
  );
}

export default App;
