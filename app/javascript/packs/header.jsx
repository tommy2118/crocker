import React from 'react';
import ReactDOM from 'react-dom';
import Header from 'Header';

document.addEventListener('turbolinks:load', () => {
  const element = document.getElementById('header-component');
  ReactDOM.render(
    <Header />,
    element,
  );
});
