import "./SearchBar.css"
import "./openSearchBar.css"
import searchIcon from "../../assets/search-icon.svg"
import { useEffect, useState } from "react"
import Calendar from "react-calendar"
import nyMap from '../../assets/ny-map-icon.jpg'
import sfMap from  '../../assets/sf-map-icon.jpg'
import miaMap from  '../../assets/miami-map-icon.jpg'
import flexMap from  '../../assets/flexible-map-icon.jpg'
import { useHistory, useParams } from "react-router-dom"
import { useDispatch } from "react-redux"

export default function SearchBar(){
    const [open, setOpen] = useState(false)
    const [content, setContent] = useState("where")
    const [checkInDate, setCheckInDate] = useState("check-in")
    const [checkOutDate, setCheckOutDate] = useState("check-out")
    const [calendarMarkers, setCalendarMarkers] = useState(null)
    const [minDate, setMinDate] = useState(new Date())
    const [city, setCity] = useState("where")
    const dispatch = useDispatch()
    const history = useHistory()
  
    useEffect(() => {

    },[])

    const cityOptions = {
        "ny": "New York, NY",
        "sf" : "San Francisco, CA",
        "mia": "Miami, FL",
        "flex" : "I'm Flexible" 
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


        const handleDates = date => {
            if(content === "checkInDate"){
                setCheckInDate(date[0].toDateString())
   
                checkOutDate === 'check-out' ?  setCalendarMarkers([date[0],null]) : setCalendarMarkers([date[0], new Date(checkOutDate)])
            }else{
                setCheckOutDate(date[0].toDateString())
                checkInDate === 'check-in' ? setCalendarMarkers([null, date[0]]) : setCalendarMarkers([new Date(checkInDate), date[0]])
                
            }
        }
    
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
            if(city === undefined){
                alert("please select a location first")
                return null
            }

            if(checkInDate !== "check-in" && checkOutDate !== "check-out" && city !== "where"){
                let searchParams = {
                    "city": city,
                    "check-in": new Date(checkInDate).toISOString().split("T")[0],
                    "check-out":new Date(checkOutDate).toISOString().split("T")[0]
                }

                setOpen(false)
                document.getElementById("nav-container").style.height = "90px"
        
                const searchQueryStr = `/search/${searchParams["city"]}&${searchParams["check-in"]}&${searchParams["check-out"]}`
        
                history.push(searchQueryStr)
                window.location.reload()
              
            
                
            }else{
                alert("Please select valid dates")
            }
        }

        useEffect(() => {
            if(checkInDate !== "check-in"){
            const checkoutButton = Array.from(document.getElementsByClassName("search-option-open")).filter(tag => tag.value === "checkOutDate")[0]
            
            checkoutButton.setAttribute("id", "active-option")
            }


        },[checkInDate])

        const handleCity = (e,city) => {
            e.preventDefault()
            setCity(city)
   
            const checkInTab = document.getElementById("checkInDateButton")
       
            if(checkInTab){
                checkInTab.click()
            }
        }
        const closeSearch = e => {
            const whereButton = Array.from(document.getElementsByClassName("search-option-open")).filter(tag => tag.value === "where")[0]
            whereButton.setAttribute("id", "active-option")
        
            setOpen(false)
            setCheckInDate("check-in")
            setCheckOutDate("check-out")
            setContent("where")
            setCalendarMarkers(null)
            document.getElementById("nav-container").style.height = "90px"
        }

    return(
        
        <>
        {open === false ?
          <div class="grid-item" id="search-box" >
          <button class="search-option" onClick={handleClick}>Anywhere</button>
          <button className="search-option" onClick={handleClick}>Any week</button>
          <button className="search-option">
              <div id="add-guests" onClick={handleClick}>Add guests</div>
              <div id="search-icon-button" onClick={handleClick}>
              <img id="search-icon" src={searchIcon} ></img>
              </div>
          </button>
          </div>     
          : 

            <div id="open-search-container">
            <div  id="search-box-open">
                <button className="search-option-open" id="active-option" onClick={handleOption} value="where">{city === "where" ? city : cityOptions[city]}</button>
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
                                <div className="city-selection-option" id="ny" onClick={(e) => handleCity(e,"ny")}>
                                    <div class="search-map-icon-container">
                                    <img class="search-map-icon" src={nyMap}></img>
                                    <div class="search-city-text">New York, NY</div>
                                    </div>
                                </div>
                                <div className="city-selection-option" id="sf" onClick={(e) => handleCity(e,"sf")}>
                                <div class="search-map-icon-container">
                                    <img class="search-map-icon" src={sfMap}></img>
                                    <div class="search-city-text">San Francisco, CA</div>
                                    </div>
                                </div>
                                <div className="city-selection-option" id="mia" onClick={(e) => handleCity(e,"mia")}>
                                <div class="search-map-icon-container">
                                    <img class="search-map-icon" src={miaMap}></img>
                                    <div class="search-city-text">Miami, FL</div>
                                    </div>
                                </div>
                                {/* <div className="city-selection-option" id="flex" onClick={(e) => handleCity(e,"flex")}>
                                <div class="search-map-icon-container">
                                    <img class="search-map-icon" src={flexMap}></img>
                                    <div class="search-city-text">I'm Flexible</div>
                                    </div>
                                </div> */}
                                <div>
                                    <div>

                                    </div>
                                </div>
                                <br></br>
                                <div id="close-open-search">
                                    <div></div>
                                       <div onClick={closeSearch}> X close</div> 
                                    </div>
                        </div>
                        :
                        <div className='calendar-container' id="search-calendar">
                            <Calendar
                          
                                selectRange={true}
                                showDoubleView={true}
                                value={calendarMarkers}
                                minDate={checkInDate === "check-in" ? new Date() : new Date(checkInDate)}
                                defaultView={"month"}
                                onClickMonth={date => alert(date)}
                                onChange={(date) => handleDates(date)}
                                tileClassName={date => new Date(checkInDate).toDateString() === date.date.toDateString() ? "start" : "not"}
                                tileDisabled={date => date.date.toDateString() === checkInDate}
                                />
                                    <div id="close-open-search">
                                       <div onClick={closeSearch}> X close</div> 
                                    </div>
                        </div>
                    }
 
      </div>

      </div>


        }
          
        </>
    )
}
//"react-calendar__tile react-calendar__tile--active react-calendar__tile--range react-calendar__tile--rangeStart 

//react-calendar__tile react-calendar__tile--active react-calendar__tile--range react-calendar__tile--rangeEnd"