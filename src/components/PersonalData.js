import React, { Component } from 'react';
import photo from './photos/me.jpg';
import vk from './svgs/vk.svg';
import github from './svgs/github.svg';
import instagram from './svgs/instagram.svg';
import facebook from './svgs/facebook.svg';

export class PersonalData extends Component {
  render() {
    return (
      <div className="personal_data">
        <img className="photo" src={photo} alt="Andrew Gladilin" />

        <div className="socials">
          <a href="https://vk.com/gladilinandrew" target="_blank" rel="noopener noreferrer">
            <img className="icon vk" src={vk} alt="Vk link" />
          </a>
          <a href="https://www.facebook.com/gladilinandrew" target="_blank" rel="noopener noreferrer">
            <img className="icon facebook" src={facebook} alt="Facebook link" />
          </a>
          <a href="https://github.com/DerrSaff" target="_blank" rel="noopener noreferrer">
            <img className="icon github" src={github} alt="Github link" />
          </a>
          <a href="https://www.instagram.com/andrew_gladilin/" target="_blank" rel="noopener noreferrer">
            <img className="icon instagram" src={instagram} alt="Instagram link" />
          </a>
        </div>

        
      </div>
    );
  }
}
