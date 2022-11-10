import { useEffect, useState } from "react"
import { useSelector } from "react-redux";
import {fetchUser, getUser} from '../../store/user'
import { useParams } from "react-router-dom";
import { useDispatch } from "react-redux";
import DateSelector from "../DateSelector";
import { fetchRerservations, makeReservation } from "../../store/reservation";
import "./ReservationForm.css"
import { useHistory } from "react-router-dom";
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"
import xMark from "../../assets/iconmonstr-x-mark-1.svg"
import downArrow from "../../assets/down-arrow.png"
import leftArrow from "../../assets/left-arrow.png"


export default function ReservationForm({listing,checkOutDate,checkInDate}){
    const [show, setShow] = useState(true)
    const history = useHistory()
    const toggleModal = () => {
        setShow(false)
        history.push("/")
      }
    const dispatch = useDispatch()
    const {id} = useParams();
    const userId = useSelector(getUser).id ;

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

        if(checkInDate === ''|| checkOutDate === ''){
            alert("Please select dates to continue")
        }else{
            document.getElementById("reservation-confirmation-overlay").style.display = "block"
        }
    }
    const handleReservation = (e) => {
       
        alert(new Date(checkInDate) > new Date(checkOutDate))
        // const reservationData = {
        //     user_id: userId,
        //     listing_id: id,
        //     start_date: checkInDate,
        //     end_date: checkOutDate
        // }
        // if(reservationData[startDate] === '' ||reservationData[endDate] === ''){
        //     alert("please add ddates")
        // }else{
        //     dispatch(makeReservation(reservationData))
        //     dispatch(fetchRerservations(id))
        //     alert("reservation made!")
        // }
  
    }
 
    return (
        <>
            
            <div className="reservation-item" id="reservation-price">
               <div><span>${listing.price} </span>night</div>
               <div><img src={reviewStar} ></img>  review</div>
            </div>
            <div className="reservation-item" id="reservation-info-box">
                <div id="dates-box">
                <div id="check-in-date">
                    <span>Check-In</span>
                    <br></br>
                    <span>{checkInDate}</span>
                </div>
                <div id="check-out-date">
                <span>Check-out</span>
                <br></br>
                <span>{checkOutDate}</span>
                </div>
                </div>
                <div id="guests"> 
                         Guests
                    <button><img src={downArrow}></img></button>
                </div>
            
            </div>
            <div className="reservation-item" id="show-reserve-button-container">
                <button  id="show-reserve-button" onClick={handleSubmit}>Reserve</button>
                <br></br>
                you wont be charged yet
            </div>
            <div className="reservation-item">
                <div className="fee-item">
                    <span>${listing.price}  {checkInDate !== '' && checkOutDate !== '' ?  `X ${Math.ceil(Math.abs(new Date(checkOutDate) - new Date(checkInDate)) / (1000 * 60 * 60 * 24))} nights` : ''}</span>
                    <span>{checkInDate !== '' && checkOutDate !== '' ?  "$" + `${ listing.price * Math.ceil(Math.abs(new Date(checkOutDate) - new Date(checkInDate)) / (1000 * 60 * 60 * 24))}` : ''}</span>
                </div>
                <div className="fee-item">
                    <span>Cleaning Fee</span>
                    <span>${listing.cleaning_Fee}</span>
                </div>
                <div className="fee-item">
                    <span>Service Fee</span>
                    <span>${listing.cleaning_Fee}</span>
                </div>
            </div>
            <br></br>
            <br></br>
            <div className="border-line"></div>
            <div id="reservation-total-fee" className="fee-item">
                <span><b>Total before taxes</b></span>
                <span>${checkInDate !== '' && checkOutDate !== '' ?  `${(listing.price * Math.ceil(Math.abs(new Date(checkOutDate) - new Date(checkInDate)) / (1000 * 60 * 60 * 24))) +listing.cleaning_Fee + listing.ser}` : ''}</span>
            </div>

          <div id="reservation-confirmation-overlay">
      
            <div id="reservation-confirmation">
    
            <div id="confirmation-booking-details">
            
            <p onClick={closeConfirmation} id="confirmation-title"><img id="left-arrow" src={leftArrow}></img>  Request to book</p>
            <div>
                <p id="confirmation-booking-title">Your trip</p>
                <br></br>
                <p id="confirmation-dates-title">Dates</p>
                <br></br>
                <br></br>
   
                <div id="date-confirmation-container">
                    <div>
                    <p id="dates">{months[checkInDate.split("/")[0]]} {checkInDate.split("/")[1]} - {months[checkOutDate.split("/")[0]]} {checkOutDate.split("/")[1]}</p>
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
                    <span>${listing.price} X number of nights</span>
                    <span>$0</span>
                </div>
                <div className="fee-item">
                    <span>Cleaning Fee</span>
                    <span>${listing.cleaning_Fee}</span>
                </div>
                <div className="fee-item">
                    <span>Service Fee</span>
                    <span>$0</span>
                </div>
            </div>
            <br></br>
            <br></br>
            <div className="border-line"></div>
            <div id="reservation-total-fee" className="fee-item">
                <span><b>Total before taxes</b></span>
                <span>$total</span>
            </div>

                </div>

            
            </div>
          </div>
    
     

</>
    )
}
