
import { ADD_USER } from "./session"
import { useSelector } from "react-redux"

const ADD_USERS = 'users/ADD_USERS'
  export const getUser = state => {
    if(state.session){
      return state.session.user
    }
  }

  export const addUsers = users => {
    return (
      {
        type: ADD_USERS,
        users
      }
    )
  }



  export const getCurrentUser = state => {
    if(state.user){
      return state.user.user
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


    export const fetchUsers = () => async dispatch => {
      const res = await fetch(`/api/users`)
      const data = await res.json()
        if(data){
       
          return dispatch(addUsers(data))
        }else{
          return null
        }
      }
  

    
  

  export default function UserReducer(state={},action){
    switch(action.type){
       case ADD_USERS:
          return {...action.users}
        case ADD_USER:
            return {...action.user}
        default:
            return state
    }
  }


