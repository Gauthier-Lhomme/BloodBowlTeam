import { Route, Switch } from "react-router-dom";
import { Reset } from "styled-reset";
import HumanPage from "./components/HumanPage";
import MainPage from "./components/MainPage";
import Navbar from "./components/Navbar";
import News from "./components/News";
import Teams from "./components/Teams";
import { AppDiv } from "./styled-components/App";

function App() {
  return (
    <AppDiv>
      <Reset />
      <Navbar />
      <Switch>
        <Route exact path="/" component={MainPage} />
        <Route path="/news" component={News} />
        <Route path="/teams" component={Teams} />
        <Route path="/human" component={HumanPage} />
      </Switch>
    </AppDiv>
  );
}

export default App;
