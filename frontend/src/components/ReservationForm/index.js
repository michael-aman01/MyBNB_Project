import { useEffect, useState } from "react"
import { useSelector } from "react-redux";
import {fetchUser, getUser} from '../../store/user'
import { useParams } from "react-router-dom";
import { useDispatch } from "react-redux";
import DateSelector from "../DateSelector";
import { fetchRerservations, makeReservation } from "../../store/reservation";
import "./ReservationForm.css"
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"
export default function ReservationForm({l,checkInDate,checkOutDate}){
    const listing = {l}
  
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


    const handleSubmit = (e) => {
        e.preventDefault()

        
        const reservationData = {
            user_id: userId,
            listing_id: id,
            start_date: checkInDate,
            end_date: checkOutDate
        }
        if(reservationData[startDate] === '' ||reservationData[endDate] === ''){
            alert("please add ddates")
        }else{
            dispatch(makeReservation(reservationData))
            dispatch(fetchRerservations(id))
            alert("reservation made!")
        }
  
    }
 
    return (
        <>
            
            <div className="reservation-item" id="reservation-price">
               <div><span>${listing.price} </span>night</div>
               <div><img src={reviewStar}></img>  review</div>
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
                <div id="guests">guests</div>
            </div>
            <div className="reservation-item" id="show-reserve-button-container">
                <button  id="show-reserve-button">Reserve</button>
                <br></br>
                you wont be charged yet
            </div>
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
     
     
{/*            
<div id="reservation-widget">
<div id="reservation-header-container">
    <p>${listing.price} night</p>
    <p>reviewsrails</p>
</div>
<div id="reservation-selection-container">
    <div id="dates-container">
    <div className="dates" id="check-in-display" value={checkInDate}>
        check-in
        <p id="check-in-date">{checkInDate}</p>
    </div>
    <div className="dates">
        check-out
        <p id="check-out-date">{checkOutDate}</p>
        </div>
    </div>
</div>
<br></br>
<div id="reservation-button-container">
    <button id="reservation-button" onClick={handleSubmit}>Reserve</button>
</div>
<br></br>
<p>you wont be charged yet</p>
<br></br>


<div id="reservation-fee-container">
    <p>{listing.price} X # nights</p>
    <p>{listing.cleaning_fee}</p>
    <p>service fee</p>
    </div>
<div id="reservation-total-container">
    <p>Total before taxes</p>
    <p>{listing.price + listing.cleaning_fee}</p>
</div>
</div>
 */}

</>
    )
}
