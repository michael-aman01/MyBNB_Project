import {useDispatch, useSelector } from 'react-redux'
import LoginFormPage from '../../LoginFormPage'
import LogOutButton from '../../LogoutButton'
import SignupFormPage from '../../SignupFormPage'
import { NavLink } from "react-router-dom";
import { login, logout } from '../../../store/session'
import { getUser } from '../../../store/user';
import "./NavOptionsDropdown.css"
import stripes from '../../../assets/navigation-button-stripes.svg'
import buttonImage from "../../../assets/navigation-button.svg"
import ProfilePage from '../../ProfilePage';
import { useEffect } from 'react';



export default function NavOptionsDropdown(){
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
        }
    }

    if(user === undefined || user === null){
        options = {
            "login": options["login"], 
            "signup":options["signup"],
            "demo-login": options["login"],
        }
    }else{
        options["account"] = {
            path: `/account/${user.id}`,
            component: <ProfilePage />
        }
        options = {
            "logout":options["logout"],
        "account":options["account"]
    }
    }

    const handleClick= (e) => {
        const options = Array.from(document.getElementsByClassName("nav-selection"))
        options.map(tag => {
            if(tag.style.display !== "none"){
                tag.style.display = "none"
            }else{
                tag.style.display = "flex"
            }
        })
    }

    const handleSelect = (e) => {
        if(e.target.innerHTML === "logout"){
            dispatch(logout())
        }
        if(e.target.innerHTML === "demo-login"){
            dispatch(login({
                credential: "test@gmail.com",
                password: "password"
            }))
        }
    }

    return(
        <>
             <div class="grid-item" id="nav-options">
            <div id="options-button" onClick={handleClick}>
                    <img class="button-image" src={stripes}/>
                    <img class="button-image" src={buttonImage}/>
                </div>
                {Object.keys(options).map((key,i) => 
                    <div style={{display: "none"}} key={i}  onClick={handleSelect} className="nav-selection">
                            <NavLink to={options[key].path}>{key}</NavLink>
                    </div>
                        )}
                        </div>
  
        </>
    )
}