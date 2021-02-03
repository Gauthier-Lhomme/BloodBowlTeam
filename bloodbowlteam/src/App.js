import { Reset } from "styled-reset";
import MainPage from "./components/MainPage";
import Navbar from "./components/Navbar";
import { AppDiv } from "./styled-components/App";

function App() {
  return (
    <AppDiv>
      <Reset />
      <Navbar />
      <MainPage />
    </AppDiv>
  );
}

export default App;
