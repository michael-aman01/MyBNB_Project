import { useEffect, useState } from 'react';
import Calendar from 'react-calendar';
import {useDispatch, useSelector} from 'react-redux'
import './DateSelector.css'
import { addCheckin, addCheckout, ADD_CHECKIN, getCheckIn, getCheckOut } from '../../store/reservation'

export default function DateSelector(){
  const dispatch = useDispatch()

  const [date, setDate] = useState([null,null]);
  const [minDate, setMinDate] = useState(new Date())
  const [checkinDate,setCheckInDate] = useState()
  const [checkOutDate, setCheckOutDate] = useState()

  useEffect(() => {
    if(checkinDate !== undefined){
      dispatch(addCheckin(checkinDate))
    }

  },[dispatch,checkinDate])

  useEffect(() => {
    if(checkOutDate !== undefined){
      dispatch(addCheckout(checkOutDate))
    }

  },[dispatch,checkOutDate])



  return (

<>
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
      <div>
        {checkinDate !== undefined ? (
        <div> {checkinDate.toDateString()}</div>
        ) :
        null
      
      }
  
      </div>
      </>
   
  )}