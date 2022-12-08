import "./SearchBar.css"
import "./openSearchBar.css"
import searchIcon from "../../assets/search-icon.svg"
import { useState } from "react"
import Calendar from "react-calendar"
import DateSelector from '../DateSelector'
const expandNav =(e) => {
    const tag = document.getElementById("nav-container")
    let i = 1
    
    const targetHeight = tag.style.height === "490px" ? 70 : 500
    let currentHeight = tag.style.height === "501px" ?  500 : 70
    let step =  tag.style.height === "501px" ? -1  : 1
    let transition = setInterval(() => {
        currentHeight = currentHeight + step
        tag.style.height = `${currentHeight + step}px`
        console.log(tag.style.height)

        if(currentHeight === targetHeight){
            clearInterval(transition)
        }
    },2)
    
}


export default function SearchBar(){
    const [open, setOpen] = useState(false)
    const [content, setContent] = useState("where")
    const handleClick = (e) => {
        const navBar = document.getElementById("nav-container")
        if(open === false){
            navBar.style.height = "250px"
            setOpen(true)
        }else{
            navBar.style.height = "90px"
            setOpen(false)
        }
    }

    const handleOption = (e) => {
        e.preventDefault()
        const currentlyActive = document.getElementById("active-option")
        let change = currentlyActive !== null ? currentlyActive.setAttribute("id",null) : null
        e.target.className === 'search-option-open.active' ? e.target.setAttribute("id","active-option") : e.target.setAttribute("id","active-option")
        setContent(e.target.value)
    }

    return(
        
        <>
        {open === false ?
          <div class="grid-item" id="search-box">
          <button class="search-option" onClick={handleClick}>Anywhere</button>
          <button className="search-option" onClick={handleClick}>Any week</button>
          <button className="search-option">
              <div id="add-guests" onClick={handleClick}>Add guests</div>
              <div id="search-icon-button">
              <img id="search-icon" src={searchIcon} ></img>
              </div>
          </button>
          </div>     
          : 

            <div id="open-search-container">
            <div  id="search-box-open">
                <button className="search-option-open" id="active-option" onClick={handleOption} value="where">where</button>
                <button className="search-option-open" onClick={handleOption} value="calendar">checkin</button>
                <button className="search-option-open" onClick={handleOption} value="calendar">checkout</button>
            </div> 
            <div id="open-search-content">
 
            
                    {
                        content === "where" ?
                        <div className="calendar-container">
                                <div>
                                    Search by city
                                </div>
                                <div>
                                    <div>

                                    </div>
                                </div>
                                
                        </div>
                        :
                        <div className='calendar-container' id="search-calendar">
                            <Calendar
                                selectRange={true}
                                showDoubleView={true}
                                />
                        </div>
                    }

      </div>
      </div>

       
        }
          
        </>
    )
}
