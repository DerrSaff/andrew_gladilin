import React, { Component } from 'react';
import './../styles/App.css';

import { PersonalData } from "../components//PersonalData";
import { Projects } from "./Projects";

export class App extends Component {
  render() {
    return (
      <div className="App">
        <PersonalData />
        <Projects />
      </div>
    );
  }
}

export default App;
