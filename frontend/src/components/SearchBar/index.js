import "./SearchBar.css"
import "./openSearchBar.css"
import searchIcon from "../../assets/search-icon.svg"
import { useEffect, useState } from "react"
import Calendar from "react-calendar"
import nyMap from '../../assets/ny-map-icon.jpg'
import sfMap from  '../../assets/sf-map-icon.jpg'
import miaMap from  '../../assets/miami-map-icon.jpg'
import flexMap from  '../../assets/flexible-map-icon.jpg'
export default function SearchBar(){
    const [open, setOpen] = useState(false)
    const [content, setContent] = useState("where")
    const [checkInDate, setCheckInDate] = useState("check-in")
    const [checkOutDate, setCheckOutDate] = useState("check-out")
    const [minDate, setMinDate] = useState(new Date())
    const [city, setCity] = useState("where")
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

    useEffect(() => {
        const viewTag = Array.from(document.getElementsByClassName("react-calendar__navigation__label"))[0]
        if(viewTag !==  undefined){
            viewTag.addEventListener("click", function(e){
                e.preventDefault()
                e.stopPropagation()
            })

        }
       

    },[open,content])

    useEffect(() => {

        setMinDate(new Date(checkInDate))
        const checkoutButton = document.getElementById("checkOutDateButton")
        if(checkoutButton !== null){
            checkoutButton.click()
        }
   
    },[checkInDate])



    
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

        const handleSearch = (e) => {
            e.preventDefault()
            alert("search")
        }

        const handleCity = (e,city) => {
            e.preventDefault()
            setCity(city)
   
            const checkInTab = document.getElementById("checkInDateButton")
            console.log(checkInTab)
            if(checkInTab){
                checkInTab.click()
            }
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
                <button className="search-option-open" id="active-option" onClick={handleOption} value="where">{city}</button>
                <button className="search-option-open" onClick={handleOption} value="checkInDate" id="checkInDateButton">{checkInDate}</button>
                <button className="search-option-open" onClick={handleOption} value="checkOutDate" id="checkOutDateButton">{checkOutDate}</button>
                <button className="search-option-open" id="search-submit-button" onClick={handleSearch}>
                <div id="open-search-icon-button">
                
                <img id="open-search-icon" src={searchIcon} ></img>
                <div> search</div>
              </div>
                </button>
            </div> 
            <div id="open-search-content">
 
            
                    {
                        content === "where" ?
                        <div id="search-city-options-container">
                                <div className="city-selection-option" id="ny" onClick={(e) => handleCity(e,"New York, NY")}>
                                    <div class="search-map-icon-container">
                                    <img class="search-map-icon" src={nyMap}></img>
                                    <div class="search-city-text">New York, NY</div>
                                    </div>
                                </div>
                                <div className="city-selection-option" id="sf" onClick={(e) => handleCity(e,"San Francisco, CA")}>
                                <div class="search-map-icon-container">
                                    <img class="search-map-icon" src={sfMap}></img>
                                    <div class="search-city-text">San Francisco, CA</div>
                                    </div>
                                </div>
                                <div className="city-selection-option" id="mia" onClick={(e) => handleCity(e,"Miami, FL")}>
                                <div class="search-map-icon-container">
                                    <img class="search-map-icon" src={miaMap}></img>
                                    <div class="search-city-text">Miami, FL</div>
                                    </div>
                                </div>
                                <div className="city-selection-option" id="flex" onClick={(e) => handleCity(e,"I'm Flexible")}>
                                <div class="search-map-icon-container">
                                    <img class="search-map-icon" src={flexMap}></img>
                                    <div class="search-city-text">I'm Flexible</div>
                                    </div>
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
                                minDate={checkInDate === "check-in" ? new Date() : new Date(checkInDate)}
                                defaultView={"month"}
                                onClickMonth={date => alert(date)}
                                onChange={(date) => content === "checkInDate" ? setCheckInDate(date[0].toDateString()) : setCheckOutDate(date[0].toDateString())}
                                tileDisabled={date => date.date.toDateString() === checkInDate}
                                />
                        </div>
                    }

      </div>

      </div>


        }
          
        </>
    )
}
