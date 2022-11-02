
import "./NavigationBar.css"

import logo from "../../assets/logo.jpg"

import SearchBar from './SearchBar';
import NavOptionsDropdown from './NavOptionsDropdown';

export default function NavigationBar(){
    return(
        <>
         <div id="nav-container">
            <div id="logo-container">
                <img id="logo" src={logo}></img>
            </div>
            <SearchBar />
            <NavOptionsDropdown/>
        </div> 
        </>
    )
}