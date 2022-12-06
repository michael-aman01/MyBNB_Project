import "./SearchBar.css"
import searchIcon from "../../assets/search-icon.svg"

const handleClick = (e) => {
    const NavBar = document.getElementById("nav-container")
    const searchBar = document.getElementById("search-bar-container")
    const checkin = document.getElementById("checkin")
    const checkout = document.getElementById("checkout")
    checkin.style.display = "block"
    checkout.style.display = "block"
    checkin.style.borderRight= "1px solid black"
    checkout.style.borderRight= "1px solid black"
    let i = 1
    const openBar = setInterval(() => {
        let newNavHeight = `${20+i}vh`
        let newSearchBarWidth = `${20+i}vw`
        
        NavBar.style.height = newNavHeight
        searchBar.style.width = newSearchBarWidth
        searchBar.style.marginTop = `${(20+i) + (20 + i) * .5}px`
        if(newNavHeight === "45vh"){
            clearInterval(openBar)
        }
        i += 1
    },10)
}

export default function SearchBar(){

    return (
        <>
         <div class="grid-item" id="search-box">
            <button class="search-option">Anywhere</button>
            <button className="search-option">Any week</button>
            <button className="search-option">
                <div id="add-guests">Add guests</div>
                <div id="search-icon-button">
                <img id="search-icon" src={searchIcon} ></img>
                </div>
            </button>
            </div>

</>
)
}