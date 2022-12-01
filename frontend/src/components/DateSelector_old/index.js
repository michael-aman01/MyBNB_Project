import './DateSelector.css'
import { useEffect, useState } from 'react'
import left from "../../assets/left-arrow.png"
import right from "../../assets/right-arrow.png"
import ReservationForm from '../ReservationForm'
import { useDispatch, useSelector } from 'react-redux'
import { addCheckin, addCheckout, getCheckIn, getCheckOut } from '../../store/reservation'


export default function DateSelector({listing,value}){

        const today = new Date()
        const dispatch = useDispatch()

        const months = ["january","february","march","april","may","june","july","august","september","october","november","december"]
        const calendar = [].concat(...Object.values(getCalendar()))
        const calendarMonths = [...new Set(calendar.map(date => date.getMonth()))].map(i => months[i])
        const calendarYears = [...Array(12).keys()].map(i => 2022).concat( [...Array(12).keys()].map(i => 2023)).slice(calendarMonths.length -2,)
        


        function getCalendar(){
            const today = new Date()
            const tomorrow = new Date()
            const year = [...Array(365).keys()].map(i => new Date(tomorrow.setDate(today.getDate() + i)))
   
            const calendar = []
            for(let i = 0; i < 365; i++){
                // console.log(today+ i)
                calendar.push(new Date(today.setDate(today.getDate()+ 1)))
            }
            return calendar
        }

        console.log(calendarYears)
        const [selectedMonth, setSelectedMonth] = useState(0)
        const [month, setMonth] = useState(calendarMonths[selectedMonth])
        const [year, setYear] = useState(calendarYears[selectedMonth])
        const [checkInDate,setCheckInDate] = useState('')
        const [checkOutDate, setCheckOutDate] = useState('')
        const calendarDates = calendar.filter(date => months[date.getMonth()] === month && date.getFullYear() === today.getFullYear() ||  date.getFullYear() === today.getFullYear()).map(date => date.getDate())
     
        const handleClick = (e) => {
       
            e.preventDefault()
            console.log(e.target.id)
            console.log(selectedMonth)
            if(e.target.id === "up"){
           
                    setSelectedMonth(selectedMonth + 1)
                    setYear(calendarYears[selectedMonth + 1])
                    setMonth(calendarMonths[selectedMonth+1])
                    setYear(calendarYears[selectedMonth+1])
                    console.log(month)
                console.log(calendarDates)
            }else if(e.target.id === "down" &&  selectedMonth > 0){
           
                setSelectedMonth(selectedMonth - 1)
                setYear(calendarYears[selectedMonth - 1])
                setMonth(calendarMonths[selectedMonth-1])
                setYear(calendarYears[selectedMonth-1])

        }
            
        }

        function dateToString(date){
            return `${date.getMonth().toString()}/${date.getDate().toString()}/${date.getFullYear().toString()}`
        }
        const handleSelect = (e) =>{
            if(checkInDate !== '' && new Date(checkInDate) > new Date(e.target.id)){
                alert("invalid checkout date")
            }
            const availableDates = Array.from(document.getElementsByClassName("calendar-square"))
            

            
            console.log(availableDates)
            if(checkInDate === ''){
                dispatch(addCheckin(e.target.id))


                setCheckInDate(e.target.id)
            }else{
                dispatch(addCheckout(e.target.id))
                setCheckOutDate(e.target.id)
            }
        }
        const getDates = (m, y) => {
            const dates =  calendar.filter(date => months[date.getMonth()] === m && date.getFullYear() === y)
            const weekDays = {
                0:[],
                1:[],
                2:[],
                3:[],
                4:[],
                5:[],
                6:[]
            }
             dates.map(date => weekDays[date.getDay()].push(date))
             return weekDays
        }
        const calendarHeader = ["SUN","MON","TUES","WED","THURS","FRI","SAT"]
        let dates = getDates(month,year)
        //find index of 1 
        let days = Object.values(dates).map(weekArray => weekArray.map(day => day.getDate())) //number for days
        let flat = days.flat()
        let min = flat[0]
        flat.map(num => {
            if(num < min){
                min = num
            }
        })
        let minIndex
        for(let i = 0; i < Object.values(dates).length; i++){
      
            if(Object.values(dates[i]).map(d => d.getDate()).includes(min)){
                //i is array with min date, add pad to all vals before
                minIndex = i
           }
        }
        dates = Object.values(dates).map(date => {
            if( Object.values(dates).indexOf(date) < minIndex){
                date.unshift(0)
                return date
            }else{
                return date
            }
          
        })



        useEffect(()=>{
            setMonth(calendarMonths[selectedMonth])
            setYear(calendarYears[selectedMonth])
  

            console.log(month)
        },[selectedMonth])

    

        if(month){
        return(
            <>
    <div id="show-reservation-container">
        <ReservationForm listing={listing} checkInDate={checkInDate} checkOutDate={checkOutDate}/>

    </div>
    <div id="show-calendar-container">

            <div id="calendar-header">
                <button placeholder='<' id="down" onClick={e => selectedMonth > 0  ? setSelectedMonth(selectedMonth - 1) :null}> <img className='arrow' src={left}></img></button>
                <span>{month.toUpperCase()} {year}</span>
                <button id="up" onClick={e => selectedMonth < calendarMonths.length - 1  ? setSelectedMonth(selectedMonth + 1) :null}><img className='arrow' src={right}></img></button>
            </div>
            <br></br>
            <div id="calendar-container">
                {calendarHeader.map((day,i) => 
                <div>
                    {day}
              
                    <ul>
                    {dates[i].map(date => date === 0 ?  <div className='calendar-square'><br></br></div> : <div 
                    className='calendar-square' 
                    id={`${(date.getMonth()+1).toString()}/${date.getDate().toString()}/${date.getFullYear().toString()}`}
                    onClick={(e) => handleSelect(e)} 
                    >{date.getDate().toString()}</div> )}
                    </ul>

                </div>)}
            </div>
        </div>



        
             
 

      

        
            {/* <div id="overlay">
                <ReservationForm listing={listing} checkInDate={checkInDate} checkOutDate={checkOutDate}/>
            </div> */}
            </>
        )
                }
}