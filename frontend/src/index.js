import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import { Provider } from 'react-redux';
import { BrowserRouter } from 'react-router-dom';
import { configureStore } from './store'
import csrfFetch from './store/csrf';
import * as sessionActions from './store/session'

import {
  DatePickerProvider,

} from '@bcad1591/react-date-picker';
const store = configureStore()
if (process.env.NODE_ENV !== 'production') {
  window.store = store;
  window.csrfFetch = csrfFetch;
  window.sessionActions = sessionActions;
}

const renderApplication = () => {
  ReactDOM.render(
    <React.StrictMode>

  <Provider store={store}>
          <BrowserRouter>
            <App />
          </BrowserRouter>
        </Provider>

    </React.StrictMode>,
    document.getElementById('root')
  );

}



if (
  sessionStorage.getItem("currentUser") === null ||
  sessionStorage.getItem("X-CSRF-Token") === null 
) {
  store.dispatch(sessionActions.restoreSession()).then(renderApplication);
} else {
  renderApplication();
}