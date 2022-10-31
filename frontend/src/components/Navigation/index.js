import {useDispatch, useSelector } from 'react-redux'
import LoginFormPage from '../LoginFormPage'
import LogOutButton from '../LogoutButton'
import SignupFormPage from '../SignupFormPage'
import { NavLink } from "react-router-dom";
import { getUser, logout } from '../../store/session';

export default function Navigation(){
    const dispatch = useDispatch();
    const user = useSelector(getUser);

    let options = {
        "signup": {
            path: "/signup",
            component: <SignupFormPage />,

        },
        "login": {
            path: "/login",
            component: <LoginFormPage />
        },
        "logout":{
            path: "/login",
            component: <LogOutButton/>,
            handleClick: () => alert("hello")
        }
    }

    if(user === undefined){
        options = {"login": options["login"], "signup":options["signup"]}
    }else{
        options = {"logout":options["logout"]}
    }
    
    const handleClick= (e) => {
        let optionTags = document.getElementsByClassName("nav-option")
        let newSetting = optionTags[0].style.display === "none" ? "block" : "none"
        for(let i = 0; i < optionTags.length; i++){
            optionTags[i].style.display = newSetting
        }
    }

    const handleSelect = (e) => {
        if(e.target.innerHTML === "logout"){
            dispatch(logout())
        }
    }

    return(
        <>
            <ul id="nav-list" onClick={handleClick}>Nav Options
                {Object.keys(options).map((key,i) => 
                <li key={i} hidden class="nav-option" onClick={handleSelect}>
                        <NavLink to={options[key].path}>{key}</NavLink>
                </li>
            
                )}
            
            </ul>
        </>
    )
}