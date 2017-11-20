import React, { Component } from 'react';

export class Project extends Component {
  render() {
    return (
      <div>
        <a href={this.props.link} target="_blank" rel="noopener noreferrer">
          <figure>
            <p><img className="project_image" src={this.props.file} alt="English with Games" /></p>
            <figcaption className="project_name">{this.props.name}</figcaption>
          </figure>
        </a>
      </div>
    );
  }
}
