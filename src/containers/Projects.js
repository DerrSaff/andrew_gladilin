import React, { Component } from 'react';
import { Project } from '../components/Project'
import EnglishWithGames from './../components/projects/english_with_games.png'
import LanguagesComparison from './../components/projects/spreadsheet-cell-row.svg'

export class Projects extends Component {
  render() {
    return (
      <div className="projects">
        <h2 className="projects__title">Projects and Activities</h2>
        <div className="projects__list">
          <Project file={EnglishWithGames} link="https://vk.com/engvg" />
          <Project file={LanguagesComparison} link="https://languages-comparison.herokuapp.com/" />
        </div>
      </div>
    );
  }
}
