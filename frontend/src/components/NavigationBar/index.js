
import "./NavigationBar.css"
import NavigationToggle from "../NavigationToggle";
import logo from "../../assets/logo.jpg"
import SearchBar from './SearchBar';
import NavOptionsDropdown from './NavOptionsDropdown';
import { useHistory } from "react-router-dom";
import bnbLogo from "../../assets/Airbnb_Logo.png"
export default function NavigationBar(){
    const history = useHistory()
    const handleClick = () => {
        history.push("/listings")
        window.location.reload()
    }
    return(
        <>
      <div class="grid-container" id="nav-container">
         <div class="grid-item" id="logo-box">
            <div id="nav-logo">
                <img src={bnbLogo} height="30px" width="100px"/>
            </div>
        </div>
   
                <SearchBar />
        
    
                <NavOptionsDropdown />
       
        </div>

        </>
    )
}