import { useSelector, useDispatch  } from "react-redux";
import { useHistory } from "react-router-dom";
import {getUser} from "../../store/user"
import { logout } from "../../store/session";

export default function LogOutButton(){
    const currentUser = useSelector(getUser);
    const dispatch = useDispatch()
    const history = useHistory()
  

    const handleLogout = (e) => {
        e.preventDefault()
        dispatch(logout())
        history.push("/")
        window.location.reload()
    }

    
    if(currentUser){
        return(
            <button onClick={(e) => handleLogout(e)}>logout</button>
        )
    }else{
        return null
    } 
}