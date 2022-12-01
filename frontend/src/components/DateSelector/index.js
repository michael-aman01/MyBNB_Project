import { useEffect, useState } from 'react';
import Calendar from 'react-calendar';
import {useDispatch, useSelector} from 'react-redux'
import './DateSelector.css'
import ReservationForm from '../ReservationForm';
import { addCheckin, addCheckout, ADD_CHECKIN, getCheckIn, getCheckOut, getReservations } from '../../store/reservation'

export default function DateSelector({listing}){
  const dispatch = useDispatch()

  const [date, setDate] = useState([null,null]);
  const [minDate, setMinDate] = useState(new Date())
  const [checkinDate,setCheckInDate] = useState()
  const [checkOutDate, setCheckOutDate] = useState()

  useEffect(() => {
    if(checkinDate !== undefined){
      dispatch(addCheckin(checkinDate))
      setCheckInDate(checkinDate)
   
    }

  },[dispatch,checkinDate])

  useEffect(() => {
    if(checkOutDate !== undefined){
      dispatch(addCheckout(checkOutDate))
    }

  },[dispatch,checkOutDate])



  return (

<>

        <ReservationForm listing={listing} checkIn={checkinDate} checkOut={checkOutDate}/>

    
        <div id="show-calendar-container">
        <div id="calendar-description">
        {checkinDate !== undefined && checkOutDate !== undefined ? (
        <div id="description-title">{Math.ceil(Math.abs(new Date(checkOutDate) - new Date(checkinDate)) / (1000 * 60 * 60 * 24))} nights in {listing.city}</div>
        ) :
        null
      
      }
        </div>
      <div className='calendar-container'>
        <Calendar
          onChange={setDate}
          value={date}
          selectRange={true}
          minDate={checkinDate === undefined ? new Date() : checkinDate}
          onClickDay={(e) => checkinDate === undefined ? setCheckInDate(e) : setCheckOutDate(e)}
          showDoubleView={true}
          
        />
      </div>

        </div>
      </>
   
  )}