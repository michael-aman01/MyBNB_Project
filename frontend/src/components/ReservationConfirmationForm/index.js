import { useDispatch } from "react-redux";
import { useSelector } from "react-redux";
import leftArrow from "../../assets/left-arrow.png"
import { useParams } from "react-router-dom";
import { fetchUser, getUser } from "../../store/user";
import { fetchRerservations, makeReservation, updateReservation} from "../../store/reservation";
import { useHistory } from "react-router-dom";
import { useEffect, useState } from "react";
import Calendar from 'react-calendar';
import xMark from '../../assets/iconmonstr-x-mark-1.svg'
import DateSelector from "../DateSelector";
import './ReservationConfirmation.css'
export default function ReservationConfirmationForm({listing,checkIn,checkOut,adults,children,infants,pets, startDate, endDate,method, reservationID}){
  
    const dispatch = useDispatch()
    const {id} = useParams();
    const userId = useSelector(getUser).id ;
    const history = useHistory()
    const initialDates = null
    const [currentAdults, setCurrentAdults] = useState(adults)
    const [currentPets, setCurrentPets] = useState(pets)
    const [currentChildren, setCurrentChildren] = useState(children)
    const [currentInfants, setCurrentInfants] = useState(infants)
    const [currentCheckIn, setCurrentCheckIn] = useState(checkIn)
    const [currentCheckOut, setCurrentCheckOut] = useState(checkOut)
    const [maxMessage, setMaxMessage] = useState()
    const [date, setDate] = useState(initialDates)
    const [minDate, setMinDate] = useState(new Date())
    const [checkinDate,setCheckInDate] = useState()
    const [checkOutDate, setCheckOutDate] = useState()
    const [disabledDates, setDisabledDates] = useState([])
    const [datesStatus, setDatesStatus] = useState(false)
    const reservations = useSelector(state => state.reservations)
    const [maxDate, setMaxDate] = useState()
    const [updateCalendar, setUpdateCalendar] = useState()

    function getDisabledDates(resDates){
    
        const takenDates = []
        const startDate = resDates[0]
        const endDate = resDates[1]
        takenDates.push(startDate)
        const diffDates = Math.abs(endDate - startDate)
        const diffDays = Math.ceil(diffDates)/(1000 * 3600 * 24)
        
        for(let i = 1; i < diffDays; i++){
    
       
          takenDates.push(new Date(startDate.getTime()  +  (60*60*24* i * 1000)))
    
        }
        takenDates.push(endDate)
    
        return takenDates
    
        // setDisabledDates(takenDates)
      }
    
  
    useEffect(() => {
        setCurrentAdults(adults)
        setCurrentChildren(children)
        setCurrentInfants(infants)
        setCurrentPets(pets)
        setCurrentCheckIn(checkIn)
        setCurrentCheckOut(checkOut)
    },[adults,pets, infants, children])
    
    const handleReservation = (e) => {
        e.preventDefault()
        const reservationData = {

            user_id: userId,
            listing_id: id,
            start_date: currentCheckIn,
            end_date: currentCheckOut,
            adult_count: currentAdults,
            children_count: currentChildren,
            pet_count: currentPets,
            infant_count: currentInfants
        }


        if(reservationData[startDate] === '' ||reservationData[endDate] === ''){
            alert("please add ddates")
        }else{
            dispatch(makeReservation(reservationData))
            dispatch(fetchRerservations(id))
            alert("reservation made!")
            history.push(`/listings`)
        }
  
    }




    const handleReservationUpdate= (e) => {

        const reservationData = {
            id : reservationID,
            user_id: userId,
            listing_id: listing.id,
            start_date: currentCheckIn,
            end_date: currentCheckOut,
            adult_count: currentAdults,
            children_count: currentChildren,
            pet_count: currentPets,
            infant_count: currentInfants
        }
        if(reservationData[startDate] === '' || reservationData[endDate] === ''){
            alert("please add ddates")
        }else{
          
            dispatch(updateReservation(reservationData))

            alert("reservation updated!")
            closeConfirmation()
            dispatch(fetchUser(userId))
            
        }
    }

    const handleIncrement = (e) => {
        const messageString = `This place has a maximum of ${listing.min_guests}, including infants and children.`
        if(e.target.id === "adults" && listing.min_guests > currentAdults){
            setCurrentAdults(currentAdults + 1)
        }else if(e.target.id === "adults" && listing.min_guests <= currentAdults){
            setMaxMessage(messageString)
        }
        if(e.target.id === "children" && listing.min_guests > currentChildren){
            setCurrentChildren(currentChildren + 1)
        }else if(e.target.id ===  "children" && listing.min_guests <= currentChildren){
            setMaxMessage(messageString)
        }
        if(e.target.id === "infants" && listing.min_guests > currentInfants){
            setCurrentInfants(currentInfants + 1)
        }else if(e.target.id ===  "infants" && listing.min_guests <= currentInfants){
            setMaxMessage(messageString)
        }
        if(e.target.id === "pets" && listing.min_guests > currentPets){
            setCurrentPets(currentPets + 1)
        }else if(e.target.id ===  "pets" && listing.min_guests <= currentPets){
            setMaxMessage(messageString)
        }
    }

    
    


    const closeConfirmation = (e) => {

        document.getElementById("reservation-confirmation-overlay").style.display = "None"
    }

    const updateDates = (dateType, newDate) => {
        if(dateType === "check-in"){
            setCurrentCheckIn(newDate)
            setMinDate(newDate)
            setCurrentCheckOut(undefined)
        }else{
            setCurrentCheckOut(newDate)
        }

        toggleCalendar()

    }

    const handleDatesUpdate = e => {
        e.preventDefault()


        let currentCalendar =     
                <Calendar
                onChange={setDate}
                value={[currentCheckIn, currentCheckOut]}
                detailedView={"month"}
                selectRange={true}
                maxDate={maxDate}
                minDate={e.target.id === "check-in" ? new Date() : new Date(currentCheckIn.getTime()  +  (60*60*24* 1000))}
                onClickDay={(d) => updateDates(e.target.id,d)}
                showDoubleView={true}
                tileDisabled={(date) => disabledDates.includes(date.date.toDateString())}    
            />
        setUpdateCalendar(currentCalendar)
        
        document.getElementById("confirmation-booking-details").hidden = true
        document.getElementById("confirmation-price-details").hidden = true
        Array.from(document.getElementsByClassName("reservation-details-modal"))[0].hidden = true
        Array.from(document.getElementsByClassName("reservation-details-modal"))[0].style.display = "none"
        const calendarContainer = document.getElementById("calendar-container-confirmation")
        calendarContainer.style.display = "flex"
    
    }

    const toggleCalendar = () => {
        document.getElementById("confirmation-booking-details").hidden = false
        document.getElementById("confirmation-price-details").hidden = false
        Array.from(document.getElementsByClassName("reservation-details-modal"))[0].hidden = false
        Array.from(document.getElementsByClassName("reservation-details-modal"))[0].style.display = "flex"
        const calendarContainer = document.getElementById("calendar-container-confirmation")
        calendarContainer.style.display = "none"
      }

      useEffect(() => {
        let takenDates = Object.values(reservations).map(res => getDisabledDates([new Date(res.startDate), new Date(res.endDate)])).flat().map(date => date.toDateString())
        setDisabledDates(takenDates)
        const viewTag = Array.from(document.getElementsByClassName("react-calendar__navigation__label"))[0]
      
        if(viewTag !==  undefined){
            viewTag.addEventListener("click", function(e){
                e.preventDefault()
                e.stopPropagation()
            })
    
        }
      },[])
    return(
        <>
    <div  className="reservation-confirmation-calendar-confirmation" id= "calendar-container-confirmation">
    
    <div onClick={toggleCalendar}><img src={xMark}></img></div>
                 {updateCalendar}
    </div>

        <div id="reservation-confirmation" className="reservation-details-modal">

        <div id="confirmation-booking-details">
        
        <p onClick={closeConfirmation} id="confirmation-title"><img id="left-arrow" src={leftArrow}></img>  {method === "update"? "Update Reservation" : "Request to book"}</p>
        <div>
            <p id="confirmation-booking-title">Your trip</p>
            <br></br>
            <div id="edit-dates-container">
                <div>
                <p id="confirmation-dates-title">{currentCheckIn === undefined ? null : currentCheckIn.toDateString()}</p>
                <p> - </p>
                <p id="confirmation-dates-title">{currentCheckOut === undefined ? null : currentCheckOut.toDateString()}</p>
                </div>
                <div>
                    <div  className="dates-update-button" id="check-in" onClick={handleDatesUpdate}>update</div>
                    <br></br>
                    <div  className="dates-update-button" id="check-out" onClick={handleDatesUpdate}>update</div>
                </div>
                <br></br>
            </div>

            <br></br>
            <br></br>
   

            <div className="guests-confirmation-container">
                <div>
                <p id="adults">{currentAdults} Adults</p>
                <br></br>
                </div>
                <div className="edit-button" >
                <div className="confirmation-options-buttons">
                        <button onClick={() => currentAdults > 1 ? setCurrentAdults(currentAdults-1) : null}>-</button>
                        <span  id="guest-count">{currentAdults}</span>
                        <button id="adults" onClick={handleIncrement}>+</button>
                    </div>
                </div>
            </div>

            <div className="guests-confirmation-container">
                <div>
                <p id="children">{currentChildren} Children</p>
                <br></br>
                </div>
                <div className="edit-button">
                    <div className="confirmation-options-buttons">
                        <button onClick={() => currentChildren> 0 ? setCurrentChildren(currentChildren-1) : null}>-</button>
                        <span  id="guest-count">{currentChildren}</span>
                        <button id="children" onClick={handleIncrement}>+</button>
                    </div>
                </div>
            </div>
            <div className="guests-confirmation-container">
                <div>
                <p id="infants">{currentInfants} Infants</p>
                <br></br>
                </div>
                <div className="edit-button">
                <div className="confirmation-options-buttons">
                        <button onClick={() => currentInfants > 0 ? setCurrentInfants(currentInfants-1) : null}>-</button>
                        <span  id="guest-count">{currentInfants}</span>
                        <button id="infants" onClick={handleIncrement}>+</button>
                    </div>
                </div>
            </div>
            <div className="guests-confirmation-container">
                <div>
                <p id="pets">{currentPets} Pets</p>
                <br></br>
                </div>
                <div className="edit-button">
                <div className="confirmation-options-buttons">
                        <button onClick={() => currentPets > 0 ? setCurrentPets(currentPets-1) : null}>-</button>
                        <span  id="guest-count">{currentPets}</span>
                        <button id="pets" onClick={handleIncrement}>+</button>
                    </div>
                </div>
            </div>
            <div className="reservation-item" id="show-reserve-button-container">
            <button  id="show-reserve-button" onClick={method === "update" ? handleReservationUpdate : handleReservation}>{method === "update" ? "Update" : "Reserve"}</button>
            </div>
        </div>
            </div>
            <div id="confirmation-price-details">
            <p id="confirmation-booking-title">Price details</p>
            <div className="reservation-item">
            <div className="fee-item">
                    <span>${listing.price}  {checkIn !== undefined && checkOut !== undefined ?  `X ${Math.ceil(Math.abs(new Date(checkOut) - new Date(checkIn)) / (1000 * 60 * 60 * 24))} nights` : 'per night'}</span>
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
            <span><b>Total </b></span>
            <span>${checkIn !== undefined && checkOut !== undefined ?  `${(listing.price * Math.ceil(Math.abs(new Date(checkOut) - new Date(checkIn)) / (1000 * 60 * 60 * 24))) +listing.cleaning_fee + listing.service_fee}` : null}</span>
        </div>
        <br>
        </br>
        <div id="max-message">
                {maxMessage === undefined ? null : `${maxMessage}!`}
        </div>

            </div>
    
        
        </div>
        </>
    )
}