import {useDispatch, useSelector } from 'react-redux'
import LoginFormPage from '../LoginFormPage'
import LogOutButton from '../LogoutButton'
import SignupFormPage from '../SignupFormPage'
import { NavLink } from "react-router-dom";
import { getUser, login, logout } from '../../store/session';
import "./Navigation.css"
import stripes from "../../assets/navigation-button-stripes.svg"
import buttonImage from "../../assets/navigation-button.svg"
import logo from "../../assets/logo.jpg"
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
        }
    }

    if(user === undefined){
        options = {
            "login": options["login"], 
            "signup":options["signup"],
            "demo-login": options["login"]
        }
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
        if(e.target.innerHTML === "demo-login"){
            dispatch(login({
                credential: "test@gmail.com",
                password: "password"
            }))
        }
    }

    return(
        <>

      
         <div id="nav-container">
            <div id="logo-container">
                <img id="logo" src={logo}></img>
            </div>
            <div id="search-bar-container">search</div>
            <div id="dropdown-container">
            <div className="dropdown">
                        <button className="dropbtn"  onClick={handleClick}>
                                <img className='button-image' src={stripes}></img>
                                <img className='button-image' src={buttonImage}></img>
                        </button>
                        <div className="dropdown-content">
                                {Object.keys(options).map((key,i) => 
                                <div key={i} hidden onClick={handleSelect} className="nav-option">
                                        <NavLink to={options[key].path}>{key}</NavLink>
                                </div>
                                    )}
                        </div>
                </div>
            </div>
             
        </div> 
     


        </>
    )
}