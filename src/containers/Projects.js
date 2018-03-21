import React, { Component } from 'react';
import { Project } from '../components/Project'
import EnglishWithGames from './../components/projects/english_with_games.png'
import LanguagesComparison from './../components/projects/spreadsheet-cell-row.svg'
import arangodb_docs from '../components/images/arangodb_docs.jpeg';

export class Projects extends Component {
  render() {
    return (
      <div className="projects">
        <h2 className="projects__title">Projects and Activities</h2>
        <div className="projects__list">
          <Project file={EnglishWithGames} link="https://vk.com/engvg" alt="English with Games" />
          <Project file={LanguagesComparison} link="https://languages-comparison.herokuapp.com/" alt="Languages Comparison" />
          <Project file={arangodb_docs} link="https://arangodb-rus-docs.herokuapp.com/" alt="ArangoDB Русская документация" />
        </div>
      </div>
    );
  }
}
