import { useEffect, useState } from "react"
import { useSelector } from "react-redux";
import {fetchUser, getUser} from '../../store/user'
import { useParams } from "react-router-dom";
import { useDispatch } from "react-redux";
import DateSelector from "../DateSelector_old";
import { fetchRerservations, makeReservation } from "../../store/reservation";
import "./ReservationForm.css"
import { useHistory } from "react-router-dom";
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"
import xMark from "../../assets/iconmonstr-x-mark-1.svg"
import downArrow from "../../assets/down-arrow.png"
import leftArrow from "../../assets/left-arrow.png"


export default function ReservationForm({listing,checkOut,checkIn}){
    console.log(`from resrrvation ${checkIn}`)
    const [checkInDate,setCheckInDate] = useState('')
    const [checkOutDate, setCheckOutDate] = useState('')
    const [adults, setAdults] = useState(0)
    const [children, setChildren] = useState(0)
    const [infants,setInfants] = useState(0)
    const [pets, setPets] = useState(0)
    const [show, setShow] = useState(true)
    const history = useHistory()
    const toggleModal = () => {
        setShow(false)
        history.push("/")
      }
    const dispatch = useDispatch()
    const {id} = useParams();
    const userId = useSelector(getUser).id ;
    const [maxMessage, setMaxMessage] = useState()

    console.log(listing.reservations)
    console.log(listing.reservations)
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
    const months = {"01":"Jan","02":"Feb","03":"Mar","04":"Apr","05":"May","06":"Jun","07":"Jul","08":"Aug","09":"Sept","10":"Oct","11":"Nov","12":"Dec"}
    const closeConfirmation = (e) => {

        document.getElementById("reservation-confirmation-overlay").style.display = "None"
    }
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
    const handleReservation = (e) => {
        const reservationData = {
            user_id: userId,
            listing_id: id,
            start_date: checkIn,
            end_date: checkOut
        }
        if(reservationData[startDate] === '' ||reservationData[endDate] === ''){
            alert("please add ddates")
        }else{
            dispatch(makeReservation(reservationData))
            dispatch(fetchRerservations(id))
            alert("reservation made!")
            history.push(`/accounts/${userId}`)
        }
  
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
    return (
        <>
              <div id="show-reservation-container" className="sticky">
            <div className="reservation-item" id="reservation-price">
               <div><span>${listing.price} </span>night</div>
               <div><img src={reviewStar} ></img>  review</div>
            </div>
            <div className="reservation-item" id="reservation-info-box">
                <div id="dates-box">
                <div id="check-in-date">
                    <span>Check-In</span>
                    <br></br>
                           

                    {checkIn !== undefined ? (
        <span>{checkIn.toDateString()}</span>
        ) :
        null
      
      }
                </div>
                <div id="check-out-date">
                <span>Check-out</span>
                <br></br>

                

                {checkOut !== undefined ? (
        <span>{checkOut.toDateString()}</span>
        ) :
        null
      
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
      
            <div id="reservation-confirmation">
    
            <div id="confirmation-booking-details">
            
            <p onClick={closeConfirmation} id="confirmation-title"><img id="left-arrow" src={leftArrow}></img>  Request to book</p>
            <div>
                <p id="confirmation-booking-title">Your trip</p>
                <br></br>
                <p id="confirmation-dates-title">{checkIn === undefined ? null : checkIn.toDateString()}</p>
                <p> - </p>
                <p id="confirmation-dates-title">{checkOut === undefined ? null : checkOut.toDateString()}</p>
                <br></br>
                <br></br>


                <div className="guests-confirmation-container">
                    <div>
                    <p id="adults">{adults} Adults</p>
                    <br></br>
                    </div>
                    <div className="edit-button" onClick={(e) => closeConfirmation(e)}>
                        edit
                    </div>
                </div>

                <div className="guests-confirmation-container">
                    <div>
                    <p id="children">{children} Children</p>
                    <br></br>
                    </div>
                    <div className="edit-button" onClick={(e) => closeConfirmation(e)}>
                        edit
                    </div>
                </div>
                <div className="guests-confirmation-container">
                    <div>
                    <p id="infants">{infants} Infants</p>
                    <br></br>
                    </div>
                    <div className="edit-button" onClick={(e) => closeConfirmation(e)}>
                        edit
                    </div>
                </div>
                <div className="guests-confirmation-container">
                    <div>
                    <p id="pets">{pets} Pets</p>
                    <br></br>
                    </div>
                    <div className="edit-button" onClick={(e) => closeConfirmation(e)}>
                        edit
                    </div>
                </div>
                <div className="reservation-item" id="show-reserve-button-container">
                <button  id="show-reserve-button" onClick={handleReservation}>Reserve</button>
                </div>
            </div>
                </div>
                <div id="confirmation-price-details">
                <p id="confirmation-booking-title">Price details</p>
                <div className="reservation-item">
                <div className="fee-item">
                    <span>${listing.price}  {checkInDate !== '' && checkOutDate !== '' ?  `X ${Math.ceil(Math.abs(new Date(checkOutDate) - new Date(checkInDate)) / (1000 * 60 * 60 * 24))} nights` : ''}</span>
                    <span>{checkInDate !== '' && checkOutDate !== '' ?  "$" + `${ listing.price * Math.ceil(Math.abs(new Date(checkOutDate) - new Date(checkInDate)) / (1000 * 60 * 60 * 24))}` : ''}</span>
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
                <span>${checkInDate !== '' && checkOutDate !== '' ?  `${(listing.price * Math.ceil(Math.abs(new Date(checkOutDate) - new Date(checkInDate)) / (1000 * 60 * 60 * 24))) +listing.cleaning_fee + listing.service_fee}` : ''}</span>
            </div>

                </div>

            
            </div>
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
