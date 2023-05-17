import { useEffect, useState } from 'react';
import Calendar from 'react-calendar';
import {useDispatch, useSelector} from 'react-redux'
import './DateSelector.css'
import ReservationForm from '../ReservationForm';
import { addCheckin, addCheckout} from '../../store/reservation'
import { compose } from 'redux';

export default function DateSelector({listing, initialDates=[null, null]}){
  const dispatch = useDispatch()

  const [date, setDate] = useState(initialDates);
  const [minDate, setMinDate] = useState(new Date())
  const [checkinDate,setCheckInDate] = useState()
  const [checkOutDate, setCheckOutDate] = useState()
  const [disabledDates, setDisabledDates] = useState([])
  const [datesStatus, setDatesStatus] = useState(false)
  const reservations = useSelector(state => Object.values(state.reservations))
  const [maxDate, setMaxDate] = useState()



  function getDisabledDates(resDates){

    const takenDates = []
    const startDate = resDates[0]
    const endDate = resDates[1]
    takenDates.push(startDate.toDateString())

    const diffDates = Math.abs(endDate - startDate)
    const diffDays = Math.ceil(diffDates)/(1000 * 3600 * 24)

    for(let i = 1; i < diffDays; i++){

   
      let d = new Date(startDate.getTime()  +  (60*60*24* i * 1000))
      d = d.toDateString()
      takenDates.push(d)

    }
    takenDates.push(endDate.toDateString())

    return takenDates


  }

  useEffect(() => {
    if(reservations.length > 0){

      try{

        let reservationRanges = Object.values(reservations).map(res => [new Date(res.startDate), new Date(res.endDate)])
        let takenDates = []
        for(let i = 0; i < reservationRanges.length; i++){
          let selectedDates = getDisabledDates(reservationRanges[i])
          takenDates = [...takenDates, ...selectedDates]
        }
        setDisabledDates(takenDates)
      }catch{
        console.log(null)
      }
   


    }


  },[reservations])




  useEffect(() => {

    const viewTag = Array.from(document.getElementsByClassName("react-calendar__navigation__label"))[0]
    if(viewTag !==  undefined){
        viewTag.addEventListener("click", function(e){
            e.preventDefault()
            e.stopPropagation()
        })

    }
  },[])

  useEffect(() => {
    if(checkinDate !== undefined){
      dispatch(addCheckin(checkinDate))
      disabledDates.push(checkinDate)
      setCheckInDate(checkinDate)
      let maxDate = disabledDates.map(date => new Date(date)).filter(date => date > checkinDate)[0]
      setMaxDate(maxDate)
    }

  },[dispatch,checkinDate])

  useEffect(() => {
    if(datesStatus === true){

      dispatch(addCheckin(checkOutDate))
      dispatch(addCheckout(undefined))
      setCheckOutDate(undefined)
      setCheckInDate(checkOutDate)
      setDatesStatus(false)
 

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
          maxDate={maxDate}
          minDate={checkinDate === undefined ? new Date() : new Date(checkinDate.getTime()  +  (60*60*24* 1000))}
          onClickDay={(e) => checkinDate === undefined ? setCheckInDate(e) : setCheckOutDate(e)}
          showDoubleView={true}
          tileDisabled={date => disabledDates.includes(date.date.toDateString())}        />
   </div>
      </div>

      </>
   
  )}