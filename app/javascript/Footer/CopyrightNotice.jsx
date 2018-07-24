import React from 'react';
import PropTypes from 'prop-types';

class CopyrightNotice extends React.Component {
  render() {
    return (
      <div>
        <small>&copy;
          <span>{` ${new Date().getFullYear()} `}</span>
          <span>VetMG Media LLC</span>
        </small>
      </div>
    )
  }
}

export default CopyrightNotice
