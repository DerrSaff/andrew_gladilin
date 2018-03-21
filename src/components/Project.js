import React, {Component} from 'react';

export class Project extends Component {
  render() {
    return (
      <div>
        <a href={this.props.link} target="_blank" rel="noopener noreferrer">
          <figure>
            <p><img className="project__image" src={this.props.file} alt={this.props.alt}/></p>
          </figure>
        </a>
      </div>
    );
  }
}
