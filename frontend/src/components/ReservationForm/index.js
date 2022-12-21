import { useEffect, useState } from "react"
import { useSelector } from "react-redux";
import {getUser} from '../../store/user'
import { useParams } from "react-router-dom";
import { useDispatch } from "react-redux";
import { fetchRerservations, makeReservation } from "../../store/reservation";
import "./ReservationForm.css"
import { useHistory } from "react-router-dom";
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"
import downArrow from "../../assets/down-arrow.png"
import leftArrow from "../../assets/left-arrow.png"
import { addCheckin, addCheckout} from '../../store/reservation'
import xMark from '../../assets/iconmonstr-x-mark-1.svg'
import ReservationConfirmationForm from "../ReservationConfirmationForm";

export default function ReservationForm({listing,checkOut,checkIn}){

    const [updateCalendar, setUpdateCalendar] = useState()
    const [checkInDate,setCheckInDate] = useState()
    const [checkOutDate, setCheckOutDate] = useState()
    const [avgReview, setAvgReview] = useState()
    const [adults, setAdults] = useState(0)
    const [children, setChildren] = useState(0)
    const [infants,setInfants] = useState(0)
    const [pets, setPets] = useState(0)
    const [show, setShow] = useState(true)

    const maxDate = `${new Date().getMonth() + 1}/${new Date().getDate()}/${new Date().getFullYear()}`
    const history = useHistory()



    useEffect(() => {
        let avg = calcStats(listing.reviews)["avg"]
        setAvgReview(avg)
    },[listing])

    const toggleModal = () => {
        setShow(false)
        history.push("/")
      }
    const dispatch = useDispatch()
    const {id} = useParams();
    const userId = useSelector(getUser).id ;
    const [maxMessage, setMaxMessage] = useState()

    const date = new Date()
    const month = date.getMonth().toString()
    const day =  (date.getUTCDate() - 1).toString()
    const year = date.getFullYear().toString()
    let currentDate
    if(day.length < 2){
        currentDate = `${year}/${month}/0${day}`
    }else{
        currentDate = `${year}/${month}/0${day}`
    }
    const [startDate, setStartDate] = useState(currentDate);
    const [endDate, setEndDate] = useState("");


    const handleSubmit = (e) => {
        e.preventDefault()

        if(checkIn === ''|| checkOut === ''){
            alert("Please select dates to continue")
        }else if(new Date(checkIn) > new Date(checkOut)){
            alert("enter valid dates")
        }else if(adults === 0){
            alert("please add at least one adult to your trip")
            Array.from(document.getElementsByClassName("guests-option")).forEach(options => options.style.display === "none" ? options.style.display = "flex" : options.style.display = "none")
        }else{
            document.getElementById("reservation-confirmation-overlay").style.display = "block"
        }
    }

    function calcStats(reviewsArr){
        const keys = Object.keys(reviewsArr[0])
        const stats = {}
        const unwanted = ["id","created_at","updated_at","text","user_id","listing_id"]
        keys.filter(key => !unwanted.includes(key)).map(key => {
            
            let ratingsSum = reviewsArr.map(r => r[key]).reduce((a,b) => a + b, 0)
            let stat = ratingsSum/reviewsArr.length
            stats[key] = stat.toFixed(2)
        })
        const avg = Object.values(stats).map(val => parseInt(val)).reduce((a,b) => a +b, 0)/5
        stats["avg"] = avg
        return stats
    }


    const handleOptions = (e) => {
        Array.from(document.getElementsByClassName("guests-option")).forEach(options => options.style.display === "none" ? options.style.display = "flex" : options.style.display = "none")

    }



    const handleIncrement = (e) => {
        const messageString = `This place has a maximum of ${listing.min_guests}, including infants and children.`
        if(e.target.id === "adults" && listing.min_guests > adults){
            setAdults(adults + 1)
        }else if(e.target.id === "adults" && listing.min_guests <= adults){
            setMaxMessage(messageString)
        }
        if(e.target.id === "children" && listing.min_guests > children){
            setChildren(children + 1)
        }else if(e.target.id ===  "children" && listing.min_guests <= children){
            setMaxMessage(messageString)
        }
        if(e.target.id === "infants" && listing.min_guests > infants){
            setInfants(infants + 1)
        }else if(e.target.id ===  "infants" && listing.min_guests <= infants){
            setMaxMessage(messageString)
        }
        if(e.target.id === "pets" && listing.min_guests > pets){
            setPets(pets + 1)
        }else if(e.target.id ===  "pets" && listing.min_guests <= pets){
            setMaxMessage(messageString)
        }
    }




    const closeCalendarModal = () => {
        const modal = document.getElementById("calendar-modal")

        const calendarContent = Array.from(document.getElementsByClassName("calendar-container"))[0]
        const calendarContainer = document.getElementById("show-calendar-container")
        const calendarDescription = document.getElementById("calendar-description")

        calendarContainer.appendChild(calendarDescription)
        calendarContainer.appendChild(calendarContent)
        if(modal !== null){
            modal.remove()
        }
        
    }

    const handleDateInput = (e) => {
        if(e.target.id === "check-out-date" && checkIn === undefined){
            alert("please select checkin date first")
            return null
        }
        const calendarContainer = document.getElementById("show-calendar-container")
        const calendarDescription = document.getElementById("calendar-description")
        const calendarContent = Array.from(document.getElementsByClassName("calendar-container"))[0]
        const cal = document.getElementById("reservation-confirmation-calendar")
        

        const calendarModal = document.createElement("div") 
        const calendarModalBackground = document.createElement("div")
        const calendarModalContent = document.createElement("div")
        const calendarModalHeader = document.createElement("div")
        const calendarModalBanner = document.createElement("div")

        const calendarX = document.createElement("img")
        calendarX.setAttribute("src",xMark)
        calendarX.addEventListener("click",closeCalendarModal)
        calendarModalBanner.appendChild(calendarX)
        

        calendarModalBanner.setAttribute("id","calendar-modal-banner")
        calendarModalHeader.appendChild(calendarModalBanner)

        calendarModalHeader.setAttribute("id","calendar-modal-header")
 
        calendarModalContent.appendChild(calendarModalHeader)
        calendarModalContent.appendChild(calendarDescription)
        calendarModalContent.appendChild(calendarContent)


        calendarModal.setAttribute("id","calendar-modal")
        calendarModalBackground.setAttribute("id","calendar-modal-background")
        calendarModalContent.setAttribute("id","calendar-modal-content")

        calendarModalBackground.appendChild(calendarModalContent)
        calendarModal.appendChild(calendarModalBackground)
        calendarContainer.appendChild(calendarModal)

        
    }


    useEffect(() => {
      if(checkIn !== undefined){
        closeCalendarModal()
      }
    },[checkIn])

    useEffect(() => {
        if(checkOut !== undefined){
          closeCalendarModal()
        }
      },[checkOut])
      
      const toggleCalendar = () => {
        document.getElementById("confirmation-booking-details").hidden = false
        document.getElementById("confirmation-price-details").hidden = false
        Array.from(document.getElementsByClassName("reservation-details-modal"))[0].hidden = false
        Array.from(document.getElementsByClassName("reservation-details-modal"))[0].style.display = "flex"
        const calendarContainer = Array.from(document.getElementsByClassName("calendar-container"))[0]
        calendarContainer.style.display = "none"
      }



    return (
        <>
        <div  id="reservation-confirmation-calendar" className= "calendar-container">
    
            <div onClick={toggleCalendar}><img src={xMark}></img></div>
                 {updateCalendar}
        </div>
              <div id="show-reservation-container" className="sticky">
            <div className="reservation-item" id="reservation-price">
               <div><span>${listing.price} </span>night</div>
               <div><img src={reviewStar} ></img>{avgReview}  review</div>
            </div>
            <div className="reservation-item" id="reservation-info-box">
                <div id="dates-box">
                <div id="check-in-date"  onClick={handleDateInput}>
                    <span>Check-In</span>
                    <br></br>
                           

                    {checkIn !== undefined ? (
        <span  id="check-in-span">{checkIn.toDateString()}</span>
        ) :
        <span id="check-in-span">{null}</span>
      
      }
                </div>
                <div id="check-out-date" onClick={handleDateInput}>
                <span>Check-out</span>
                <br></br>

                

                {checkOut !== undefined ? (
        <span  id="check-out-span">{checkOut.toDateString()}</span>
        ) :
        <span id="check-out-span">{null}</span>
      
      }
                
                </div>
                </div>
                <div id="guests"> 
                         Guests
                    <button onClick={handleOptions}><img src={downArrow}></img></button>
      
                </div>
                <div className="guests-option">
                    <div className="options-display-container">
                    <span className="guests-display-big">Adults</span>
                    <span className="guest-display-small">ages 13+</span>
                    </div>
    
                    <div className="options-buttons">
                        <button onClick={() => adults > 0 ? adults -= setAdults(adults-1) : null}>-</button>
                        <span  id="guest-count">{adults}</span>
                      <button id="adults" onClick={handleIncrement}>+</button>
                    </div>
                </div>
                <div className="guests-option">
                    <div className="options-display-container">
                    <span className="guests-display-big">Children</span>
                    <span className="guest-display-small">ages 2-12</span>
                    </div>
    
                    <div className="options-buttons">
                        <button onClick={() => children > 0 ? setChildren(children-1): null}>-</button>
                        <span  id="children-count">{children}</span>
                        <button id="children" onClick={handleIncrement}>+</button>
                    </div>
                </div>
                <div className="guests-option">
                    <div className="options-display-container">
                    <span className="guests-display-big">Infants</span>
                    <span className="guest-display-small">under 2</span>
                    </div>
    
                    <div className="options-buttons">
                        <button onClick={() => infants > 0 ? setInfants(infants-1) : null}>-</button>
                        <span  id="guest-count">{infants}</span>
                        <button id="infants" onClick={handleIncrement}>+</button>
                    </div>
                </div>
                <div className="guests-option">
                    <div className="options-display-container">
                    <span className="guests-display-big">Pets</span>
                    <span className="guest-display-small"></span>
                    </div>
    
                    <div className="options-buttons">
                        <button onClick={() => pets > 0 ? setPets(pets-1) : null}>-</button>
                        <span  id="guest-count">{pets}</span>
                        <button id="pets" onClick={handleIncrement}>+</button>
                    </div>
                </div>
            </div>
            <div className="reservation-item" id="show-reserve-button-container">
                <button  id="show-reserve-button" onClick={handleSubmit}>Reserve</button>
                <br></br>
                you wont be charged yet
            </div>
            <div className="reservation-item">
                <div className="fee-item">
                    <span>${listing.price}  {checkIn !== undefined && checkOut!== undefined ?  `X ${Math.ceil(Math.abs(new Date(checkOut) - new Date(checkIn)) / (1000 * 60 * 60 * 24))} nights` : 'per night'}</span>
                    <span>{checkIn !== undefined && checkOut !==undefined ?  "$" + `${ listing.price * Math.ceil(Math.abs(new Date(checkOut) - new Date(checkIn)) / (1000 * 60 * 60 * 24))}` : ''}</span>
                </div>
                <div className="fee-item">
                    <span>Cleaning Fee</span>
                    <span>${listing.cleaning_fee}</span>
                </div>
                <div className="fee-item">
                    <span>Service Fee</span>
                    <span>${listing.service_fee}</span>
                </div>
            </div>
            <br></br>
            <br></br>
            <div className="border-line"></div>
            <div id="reservation-total-fee" className="fee-item">
                <span><b>Total before taxes</b></span>
                <span>${checkIn !== undefined && checkOut !== undefined ?  `${(listing.price * Math.ceil(Math.abs(new Date(checkOut) - new Date(checkIn)) / (1000 * 60 * 60 * 24))) +listing.cleaning_fee + listing.service_fee}` : null}</span>
            </div>

          <div id="reservation-confirmation-overlay">
          <ReservationConfirmationForm listing={listing}  checkIn={checkIn} checkOut={checkOut} adults={adults} children={children} infants={infants} pets={pets} startDate={startDate} endDate={endDate} />     

        </div>
          <br></br>
          <div id="max-message">
            <span> {maxMessage === undefined ? 
                null : maxMessage
            
        }</span>
            </div>
          </div>
    
     

</>
    )
}
