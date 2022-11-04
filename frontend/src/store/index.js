import { createStore, combineReducers, applyMiddleware, compose} from 'redux';
import  thunk from 'redux-thunk'
import sessionReducer from './session';
import ListingsReducer from './data';
import { ImageReducer } from './data';
import {FormReducer} from "./session"
const rootReducer = combineReducers({
  session: sessionReducer,
  listings: ListingsReducer,
  activeForm: FormReducer
})

let enhancer;

if(process.env.NODE_ENV === 'production'){
    enhancer = applyMiddleware(thunk)
}else {
    const logger = require('redux-logger').default;
    const composeEnhancers =
      window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;
    enhancer = composeEnhancers(applyMiddleware(thunk, logger));
  }

export const configureStore = (preloadedState) => {
    return createStore(rootReducer, preloadedState, enhancer)
}


