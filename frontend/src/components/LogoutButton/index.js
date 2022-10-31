import { useSelector, useDispatch  } from "react-redux";

import { Redirect } from "react-router-dom";
import {getUser} from "../../store/session"
import { logout } from "../../store/session";

export default function LogOutButton(){
    const currentUser = useSelector(getUser);
    const dispatch = useDispatch()
  

    const handleLogout = (e) => {
        e.preventDefault()
        dispatch(logout())
        return <Redirect to="/login"/>
    }

    
    if(currentUser){
        return(
            <button onClick={(e) => handleLogout(e)}>logout</button>
        )
    }else{
        return null
    } 
}