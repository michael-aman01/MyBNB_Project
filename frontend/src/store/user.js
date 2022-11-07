
import { ADD_USER } from "./session"
import { useSelector } from "react-redux"
export const getUser = state => {
    if(state.session.user){
      return state.session.user
    }
  }
  
  export const addUser = user => {
    return({
      type: ADD_USER,
      user
    })
  }


  export const fetchUser = userId => async dispatch => {

    const res = await fetch(`/api/users/${userId}`)
    const data = await res.json()
      if(data){
     
        return dispatch(addUser(data))
      }
    }
  

  export default function UserReducer(state={},action){
    switch(action.type){
        case ADD_USER:
            return {...action.user}
        default:
            return state
    }
  }


