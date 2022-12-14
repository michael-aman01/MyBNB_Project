import "./navigationToggle.css"
import { useHistory } from "react-router-dom";
import { getUser } from "../../store/user";
import { useSelector } from "react-redux";
import { useDispatch } from "react-redux";
import {addActiveForm} from "../../store/session"

export default function NavigationToggle(){
    const history = useHistory()
    const dispatch = useDispatch()
    const currentUser = useSelector(getUser)

    
    function handleClick(){
        if(currentUser){
            let nav = document.getElementById("nav-container")
            nav.style.display = "None"
            history.push("/create")

            dispatch(addActiveForm({user_id: currentUser.id,photos: []}))
        }

    }
    return (
        <span className="nav-toggle"  onClick={handleClick}>
            switch to hosting
        </span>
    )
}