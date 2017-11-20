import React, { Component } from 'react';
import photo from './photos/1.jpg';
import vk from './svgs/vk.svg';
import github from './svgs/github.svg';
import instagram from './svgs/instagram.svg';
import facebook from './svgs/facebook.svg';

export class PersonalData extends Component {
  render() {
    return (
      <div className="box hor_row">
        <div className="socials">
          <a href="https://vk.com/gladilinandrew" target="_blank" rel="noopener noreferrer">
            <img className="icon vk" src={vk} alt="Vk link" />
          </a>
          <a href="https://github.com/DerrSaff" target="_blank" rel="noopener noreferrer">
            <img className="icon github" src={github} alt="Github link" />
          </a>
          <a href="https://www.instagram.com/andrew_gladilin/" target="_blank" rel="noopener noreferrer">
            <img className="icon instagram" src={instagram} alt="Instagram link" />
          </a>
          <a href="https://www.facebook.com/gladilinandrew" target="_blank" rel="noopener noreferrer">
            <img className="icon facebook" src={facebook} alt="Facebook link" />
          </a>
        </div>

        <img className="image" src={photo} alt="Andrew Gladilin" />

        <table className="table">
          <tbody>
            <tr>
              <td>
                Name:
                  </td>
              <td>
                Andrew Gladilin
                  </td>
            </tr>
            <tr>
              <td>
                Age:
                  </td>
              <td>
                24
                  </td>
            </tr>
            <tr>
              <td>
                Location:
                  </td>
              <td>
                Russia, Penza
                  </td>
            </tr>
            <tr>
              <td>
                Education:
                  </td>
              <td>
                Information Technologies in Design (Master Degree, 2015) <br />
                Management in Social and Economic Systems (currently studying, 2015-2019)
                  </td>
            </tr>
            <tr>
              <td>
                Civil Status:
                  </td>
              <td>
                Single
              </td>
            </tr>
            <tr>
              <td>
                Skills:
                  </td>
              <td>
                Linux-based OS, HTML, CSS, Sass, Git, JavaScript, React
              </td>
            </tr>
            <tr>
              <td>
                Languages:
                  </td>
              <td>
                <ul>
                  <li>
                    Russian (Native)
                  </li>
                  <li>
                    English (Upper-Intermediate)
                  </li>
                  <li>
                    German (Beginner)
                  </li>
                </ul>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    );
  }
}
