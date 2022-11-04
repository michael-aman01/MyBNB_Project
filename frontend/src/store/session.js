import csrfFetch from './csrf';

const SET_CURRENT_USER = 'session/SET_CURRENT_USER';
const REMOVE_CURRENT_USER = 'session/REMOVE_CURRENT_USER';

const setCurrentUser = (user) => {
  return {
    type: SET_CURRENT_USER,
    payload: user
  };
};

const removeCurrentUser = () => {
  return {
    type: REMOVE_CURRENT_USER
  };
};



const storeCSRFToken = response => {
  const csrfToken = response.headers.get("X-CSRF-Token");
  if (csrfToken) sessionStorage.setItem("X-CSRF-Token", csrfToken);
}

const storeCurrentUser = user => {
  if (user) sessionStorage.setItem("currentUser", JSON.stringify(user));
  else sessionStorage.removeItem("currentUser");
}

const initialState = { 
  user: JSON.parse(sessionStorage.getItem("currentUser"))
};

export const restoreSession = () => async dispatch => {
  const response = await csrfFetch("/api/session");
  storeCSRFToken(response);
  const data = await response.json();
  storeCurrentUser(data.user);
  dispatch(setCurrentUser(data.user));
  return response;
};

export const getUser = state => {
  if(state.session.user){
    return state.session.user
  }
}


export const login = ({ credential, password }) => async dispatch => {
  const response = await csrfFetch("/api/session", {
    method: "POST",
    body: JSON.stringify({ credential, password })
  });
  const data = await response.json();
  storeCurrentUser(data.user);
  dispatch(setCurrentUser(data.user));
  return response;
};

export const logout = () => async (dispatch) => {
  const response = await csrfFetch("/api/session", {
    method: "DELETE"
  });
  storeCurrentUser(null);
  dispatch(removeCurrentUser());
  return response;
};

export const signup = (user) => async (dispatch) => {
  const { email, password, first_name, last_name } = user;
  const response = await csrfFetch("/api/users", {
    method: "POST",
    body: JSON.stringify({
      email,
      password,
      first_name,
      last_name
    })
  });
  const data = await response.json();
  storeCurrentUser(data.user);
  dispatch(setCurrentUser(data.user));
  return response;
};



const sessionReducer = (state = initialState, action) => {
  switch (action.type) {
    case SET_CURRENT_USER:
      return { ...state, user: action.payload };
    case REMOVE_CURRENT_USER:
      return { ...state, user: null };

    default:
      return state;
  }
};


const ADD_ACTIVE_FORM = "forms/ADD_ACTIVE_FORM"
const REMOVE_ACTIVE_FORM = "forms/REMOVE_ACTIVE_FORM"
export const addActiveForm = formObj => {
  return ({
    type: ADD_ACTIVE_FORM,
    formObj
  })
}
const removeActiveForm = ()=> {
  return ({
    type: REMOVE_ACTIVE_FORM

  })
}
export const getActiveForm = () => state => {
  if(state.activeForm){
    return Object.values(state.activeForm)
  }
}

export const FormReducer = (state={activeForm: null},action) => {
  switch(action.type){
    case ADD_ACTIVE_FORM:
      return {...state, activeForm: action.formObj}
    case REMOVE_ACTIVE_FORM:
      
        return {...state, activeForm: null}
    default:
      return state
  }
}


export default sessionReducer;