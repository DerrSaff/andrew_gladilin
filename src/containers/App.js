import React, { Component } from 'react';
import './../styles/App.css';

import { Info } from "./Info";
import { Projects } from "./Projects";
import { PersonalData } from "../components/PersonalData";
import { Photo } from "../components/Photo";
import { Project } from "../components/Project";

export class App extends Component {
  render() {
    return (
      <div className="App">
        <Info>
          <Photo />
          <PersonalData />
        </Info>
        <Projects>
          <Project/>
        </Projects>
      </div>
    );
  }
}

export default App;
