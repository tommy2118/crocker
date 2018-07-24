import React from 'react';
import PropTypes from 'prop-types';

import './header.css'

class Header extends React.Component {
  render() {
    return (
      <div className="header">
        Header
      </div>
    );
  }
}
Header.propTypes = {
  name: PropTypes.string,
};

export default Header;
