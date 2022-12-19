import {useDispatch, useSelector } from 'react-redux'
import SignUpFormPage from '../SignUpFormPage'
import LogOutButton from '../LogoutButton'
import { NavLink, useHistory } from "react-router-dom";
import { login, logout } from '../../store/session'
import { getUser } from '../../store/user'
import "./NavOptionsDropdown.css"
import stripes from '../../assets/navigation-button-stripes.svg'
import buttonImage from "../../assets/navigation-button.svg"
import ProfilePage from '../ProfilePage';
import LoginFormPage from '../LoginFormPage';
import { useState } from 'react';
import * as sessionActions from "../../store/session"

export default function NavOptionsDropdown(){
    const dispatch = useDispatch();
    const user = useSelector(getUser);
    const history = useHistory()

    const [credential, setCredential] = useState('');
    const [password, setPassword] = useState('');
    const [errors, setErrors] = useState([]);
    const [show, setShow] = useState(true)

    let options = {
        "signup": {
            path: "/signup",
            component:  <SignUpFormPage type={"sign-up"}></SignUpFormPage>

        },
        "login": {
            path: "/login",
            component:  <LoginFormPage type={"login"}></LoginFormPage>
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
    const handleDemoLogin = () => {
        setErrors([]);
        dispatch(sessionActions.login({ credential: "test@gmail.com", password: "password" }))
        history.push("/listings")
          .catch(async (res) => {
            let data;
            try {
              // .clone() essentially allows you to read the response body twice
              data = await res.clone().json();
            } catch {
              data = await res.text(); // Will hit this case if the server is down
            }
            if (data?.errors) setErrors(data.errors);
            else if (data) setErrors([data]);
            else setErrors([res.statusText]);
          });
      }
      
    const handleSelect = (e) => {
        const options = Array.from(document.getElementsByClassName("nav-selection"))
        options.map(tag => {tag.style.display = "none"})
     
        if(e.target.innerHTML === "logout"){
            dispatch(logout())
      
        }
        if(e.target.innerHTML === "demo-login"){
            handleDemoLogin()  
        }

    }

    return(
        <>
             <div class="grid-item" id="nav-options">
            <div id="options-button" onClick={handleClick}>
                    <img class="button-image" src={stripes} height="200px"/>
                    <img class="button-image" src={buttonImage}/>
                </div>
                {Object.keys(options).map((key,i) => 
                    <div style={{display: "none"}} key={i}  onClick={handleSelect} className="nav-selection">
                            <span><NavLink to={options[key].path}>{key}</NavLink></span>
                    </div>
                        )}
                        </div>
  
        </>
    )
}