import "./navigationToggle.css"
import { NavLink } from "react-router-dom";
import { useHistory } from "react-router-dom";
import { getActiveForm, getUser,addAv } from "../../store/session";
import { useSelector } from "react-redux";
import { useDispatch } from "react-redux";
import {addActiveForm} from "../../store/session"
export default function NavigationToggle(){
    const history = useHistory()
    const dispatch = useDispatch()
    const currentUser = useSelector(getUser)
    const activeForm = useSelector(getActiveForm())
    console.log(activeForm)
    
    function handleClick(){
        if(currentUser){
            let nav = document.getElementById("nav-container")
            nav.style.display = "None"
            history.push("/create")
            console.log(currentUser.id)
            dispatch(addActiveForm({user_id: currentUser.id,photos: []}))
        }

    }
    return (
        <button className="nav-toggle"  onClick={handleClick}>
        <p></p>
            <p>SWITCH TO HOSTING</p>
        <p></p>
        </button>
    )
}