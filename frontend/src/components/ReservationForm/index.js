import { useEffect, useState } from "react"
import { useSelector } from "react-redux";
import {fetchUser, getUser} from '../../store/user'
import { useParams } from "react-router-dom";
import { useDispatch } from "react-redux";
import { fetchRerservations, makeReservation } from "../../store/reservation";
import "./ReservationForm.css"

export default function ReservationForm({listing}){
    const dispatch = useDispatch()
    const {id} = useParams();
    const userId = useSelector(getUser).id ;
    const [startDate, setStartDate] = useState('');
    const [endDate, setEndDate] = useState("");
    console.log(listing.reservations)
    console.log(listing.reservations)

    const handleSubmit = (e) => {
        e.preventDefault()
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
        
        
        const reservationData = {
            user_id: userId,
            listing_id: id,
            start_date: startDate,
            end_date: endDate
        }
        if(startDate === '' || endDate === ''){
            alert("please add ddates")
        }else{
            dispatch(makeReservation(reservationData))
            dispatch(fetchRerservations(id))
        }
  
    }
 
    return (
<div id="reservation-widget">
<div id="reservation-header-container">
    <p>${listing.price} night</p>
    <p>reviewsrails</p>
</div>
<div id="reservation-selection-container">
    <form id="reservation-form" onSubmit={handleSubmit}>
        <input id="start-date"value="startDate" type="date" onChange={(e) => setStartDate(e.target.value)}></input>
        <input id="start-date"value="endDate" type="date"  onChange={(e) => setEndDate(e.target.value)}></input>

    <button>Submit</button>
    </form>


</div>
<br></br>
<div id="reservation-button-container">
    reserve
</div>
<br></br>
<p>you wont be charged yet</p>
<br></br>

<div id="reservation-fee-container">fees</div>
<div id="reservation-total-container">total-price</div>
</div>
    )
}
