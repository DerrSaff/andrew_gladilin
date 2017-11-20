import React, { Component } from 'react';
import { Project } from '../components/Project'
import EnglishWithGames from './../components/projects/english_with_games.png'
import LanguagesComparison from './../components/projects/spreadsheet-cell-row.svg'

export class Projects extends Component {
  render() {
    return (
      <div className="box">
        <h2 className="projects_title">Projects</h2>
        <div className="hor_row">
          <Project name="English With Games" file={EnglishWithGames} link="https://vk.com/engvg" />
          <Project name="Languages Comparison (In development)" file={LanguagesComparison} link="https://languages-comparison.herokuapp.com/" />
        </div>
      </div>
    );
  }
}
