import {useDispatch, useSelector } from 'react-redux'
import LoginFormPage from '../../LoginFormPage'
import LogOutButton from '../../LogoutButton'
import SignupFormPage from '../../SignupFormPage'
import { NavLink } from "react-router-dom";
import { getUser, login, logout } from '../../../store/session'
import "./SearchBar.css"



export default function SearchBar(){

    return (
        <>

<div id="search-bar-container">
                <div id="calendar-container">calendar</div>
                <div id="search-bar">
                    <input type="text"></input>
                </div>
</div>
        
</>
)
}