import React from 'react';
import ReactDOM from 'react-dom';
import Footer from 'Footer';

document.addEventListener('turbolinks:load', () => {
  const element = document.getElementById('footer-component');
  ReactDOM.render(
    <Footer />,
    element,
  );
});
