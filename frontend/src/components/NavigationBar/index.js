
import "./NavigationBar.css"
import SearchBar from '../SearchBar';
import NavOptionsDropdown from '../NavOptionsDropdown';
import { useHistory } from "react-router-dom";
import bnbLogo from "../../assets/Airbnb_Logo.png"
import GithubLogo from "../../assets/github-logo.png"
import LinkedInLogo from "../../assets/linkedin.png"

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
        const options = Array.from(document.getElementsByClassName("nav-selection"))
        options.map(tag => {tag.style.display = "none"})
        history.push("/listings")

    }
    return(
        <>
      <div id="nav-container">
         <div className="grid-item" id="logo-box">
            <div id="nav-logo" onClick={handleClick}>
                <img src={bnbLogo} height="35px" width="130px"/>
            </div>
        </div>
   
                <SearchBar />
                <div id="navbar-social-media-container" className="grid-item">
                    <div>
                    <a  href="https://github.com/michael-aman01/MyBNB_Project/wiki"><img width="30px" height="30px" src={GithubLogo}></img></a>
                    </div>
                    <div>
                        <a href="https://www.linkedin.com/in/michael-aman-ba1086258/"><img width="30px" height="30px" src={LinkedInLogo}></img></a>
                    </div>
                
                </div>
                <NavOptionsDropdown />
       
        </div>

        </>
    )
}