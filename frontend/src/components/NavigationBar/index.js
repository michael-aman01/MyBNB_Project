
import "./NavigationBar.css"
import SearchBar from '../SearchBar';
import NavOptionsDropdown from '../NavOptionsDropdown';
import { useHistory } from "react-router-dom";
import bnbLogo from "../../assets/Airbnb_Logo.png"
export default function NavigationBar(){

    const history = useHistory()
    const expandNav =(e) => {
        const tag = e.target
        let i = 1
        
        const targetHeight = tag.style.height === "501px" ? 70 : 500
        let currentHeight = tag.style.height === "501px" ?  500 : 70
        let step =  tag.style.height === "501px" ? -1  : 1
        let targetOpacity = tag.style.height === "501px" ?  100 : 0
        let currentOpacity = tag.style.height === "501px" ? 0 : 100
        let transition = setInterval(() => {
            currentHeight = currentHeight + step
            currentOpacity = currentOpacity - step
            tag.style.opacity = `${currentOpacity - step}%`
            tag.style.height = `${currentHeight + step}px`
    
            if(currentHeight === targetHeight){
                clearInterval(transition)
            }
        },2)
        
    }
    const handleClick = () => {
        history.push("/listings")
        window.location.reload()
    }
    return(
        <>
      <div id="nav-container">
         <div class="grid-item" id="logo-box">
            <div id="nav-logo" onClick={handleClick}>
                <img src={bnbLogo} height="35px" width="130px"/>
            </div>
        </div>
   
                <SearchBar />
        
    
                <NavOptionsDropdown />
       
        </div>

        </>
    )
}