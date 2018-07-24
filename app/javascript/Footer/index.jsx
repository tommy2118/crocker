import React from 'react';
import PropTypes from 'prop-types';

import './footer.css'
import CopyrightNotice from './CopyrightNotice';

class Footer extends React.Component {
  render() {
    return (
      <div className="footer">
        <CopyrightNotice />
      </div>
    );
  }
}
Footer.propTypes = {
  name: PropTypes.string,
};

export default Footer;
