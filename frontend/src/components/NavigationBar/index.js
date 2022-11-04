
import "./NavigationBar.css"
import NavigationToggle from "../NavigationToggle";
import logo from "../../assets/logo.jpg"
import SearchBar from './SearchBar';
import NavOptionsDropdown from './NavOptionsDropdown';
import { useHistory } from "react-router-dom";
export default function NavigationBar(){
    const history = useHistory()
    const handleClick = () => {
        history.push("/listings")
        window.location.reload()
    }
    return(
        <>
         <div id="nav-container">
            <div id="logo-container" onClick={handleClick}>
                <img alt="" id="logo" src={logo}></img>
            </div>
            <div id="search-box">
            <SearchBar />
            </div>
 
            <div id="option-box">
            <NavigationToggle/>
            <NavOptionsDropdown/>
            </div>

        </div> 
        </>
    )
}