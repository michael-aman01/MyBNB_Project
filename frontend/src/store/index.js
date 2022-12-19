import { createStore, combineReducers, applyMiddleware, compose} from 'redux';
import  thunk from 'redux-thunk'
import sessionReducer, { UserReducer } from './session';
import ListingsReducer from './data';
import ReservationsReducer from './reservation';
import {FormReducer} from "./session"
import ReviewReducer from './review';



const rootReducer = combineReducers({
  session: sessionReducer,
  listings: ListingsReducer,
  activeForm: FormReducer,
  reservations: ReservationsReducer,
  user: UserReducer,
  review: ReviewReducer
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


