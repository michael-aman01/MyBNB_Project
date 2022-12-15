import { useEffect, useState } from 'react';
import Calendar from 'react-calendar';
import {useDispatch, useSelector} from 'react-redux'
import './DateSelector.css'
import ReservationForm from '../ReservationForm';
import { addCheckin, addCheckout} from '../../store/reservation'

export default function DateSelector({listing, initialDates=[null, null]}){
  const dispatch = useDispatch()

  const [date, setDate] = useState(initialDates);
  const [minDate, setMinDate] = useState(new Date())
  const [checkinDate,setCheckInDate] = useState()
  const [checkOutDate, setCheckOutDate] = useState()
  const [disabledDates, setDisabledDates] = useState([])
  const [datesStatus, setDatesStatus] = useState(false)
  const reservations = useSelector(state => state.reservations)
  const reviews = listing.reviews
  console.log(reviews)
  function getDisabledDates(){
    const res_range = listing.reservations.map((res) => [new Date(res.start_date), new Date(res.end_date)])
    const takenDates = []
    let dates = res_range.map(dateArr => {
      const diff = Math.round((dateArr[1] - dateArr[0]) / (1000 * 60 * 60 * 24))
      const date = new Date()
      for(let i = 0; i <= diff; i++){
        let nextDate = new Date(date.setDate(dateArr[0].getDate() + i))
        if(!takenDates.includes(nextDate)){
          takenDates.push(nextDate.toDateString())
        }
      }
    })
    setDisabledDates(takenDates)
  }

  useEffect(() => {
    getDisabledDates()
  },[])

  useEffect(() => {
    if(checkinDate !== undefined){
      dispatch(addCheckin(checkinDate))
      setCheckInDate(checkinDate)
   
    }

  },[dispatch,checkinDate])

  useEffect(() => {
    if(datesStatus === true){

      dispatch(addCheckin(checkOutDate))
      dispatch(addCheckout(undefined))
      setCheckOutDate(undefined)
      setCheckInDate(checkOutDate)
      setDatesStatus(false)
 
      console.log("reset")
    }else if(checkOutDate !== undefined){
      dispatch(addCheckout(checkOutDate))
      
    }

  },[dispatch,checkOutDate])

  useEffect(() => {
    if(checkOutDate !== undefined && checkinDate !== undefined && datesStatus === false){
        setDatesStatus(true)
    }

  },[checkOutDate, checkinDate])

  useEffect(() => {
    if(reservations.checkin !== undefined){
      setCheckInDate(reservations.checkin)
    }
},[reservations.checkin])




useEffect(() =>{
  let tags = Array.from(document.getElementsByClassName("react-calendar__navigation__label"))[0]
  tags.addEventListener("click",(e) => {
    e.preventDefault()
    

  })
},[])
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
          detailedView={"month"}
          selectRange={true}
          minDate={checkinDate === undefined ? new Date() : checkinDate}
          onClickDay={(e) => checkinDate === undefined ? setCheckInDate(e) : setCheckOutDate(e)}
          showDoubleView={true}
          tileDisabled={(date) => disabledDates.includes(date.date.toDateString())}        />
   </div>
      </div>

      </>
   
  )}