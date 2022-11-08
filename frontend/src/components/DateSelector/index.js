import './DateSelector.css'
import { useState } from 'react'
import left from "../../assets/left-arrow.png"
import right from "../../assets/right-arrow.png"


export default function DateSelector(){

        const today = new Date()

        const months = ["january","february","march","april","may","june","july","august","september","october","november","december"]
        const calendar = [].concat(...Object.values(getCalendar()))
        const calendarMonths = [...new Set(calendar.map(date => date.getMonth()))].map(i => months[i])
        const calendarYears = [...Array(12).keys()].map(i => 2022).concat( [...Array(12).keys()].map(i => 2023)).slice(calendarMonths.length -2,)
        
        console.log(calendarYears)
        const [selectedMonth, setSelectedMonth] = useState(0)
        const [month, setMonth] = useState(calendarMonths[selectedMonth])
        const [year, setYear] = useState(calendarYears[selectedMonth])

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

        const calendarDates = calendar.filter(date => months[date.getMonth()] === month && date.getFullYear() === today.getFullYear() ||  date.getFullYear() === today.getFullYear()).map(date => date.getDate())
     
        const handleClick = (e) => {
            e.preventDefault()
            alert(e)
            console.log(selectedMonth)
            console.log(e)
            if(e.target.id === "up"){
                setSelectedMonth(selectedMonth + 1)
            }else{
                setSelectedMonth(selectedMonth - 1)
            }
            console.log(selectedMonth)
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
             dates.map(date => weekDays[date.getDay()].push(date.getDate().toString()))
             return weekDays
        }
        const calendarHeader = ["SUN","MON","TUES","WED","THURS","FRI","SAT"]
        let dates = getDates(month,year)

        dates = Object.values(dates).map(date => {
            if(date.length < 5){
                return    [...Array(5 - dates[0].length).keys()].map(i => 0).concat(date)
            }else{
                return date
            }
    
        })
   
        return(
            <div id="date-selector-container">
                <div id="calendar-header">
                    <div>
                    <button id="down"  onClick={() => selectedMonth > 0 ? setSelectedMonth(selectedMonth - 1): null}> <img className='arrow' src={left}></img></button>

                    </div>
                <span>{calendarMonths[selectedMonth].toUpperCase()} {calendarYears[selectedMonth]} </span>
                <div>
                <button id="up" onClick={() => selectedMonth < calendarMonths.length - 1 ?  setSelectedMonth(selectedMonth + 1) : null}><img className='arrow' src={right}></img></button>
                </div>
            </div>
            <div id="calendar-container">
                {calendarHeader.map((day,i) => 
                <div>
                    {day}
              
                    <ul>
                        {dates[i].map(date => date === 0 ?  <div className='calendar-square'><br></br></div> : <div className='calendar-square'>{date}</div> )}
                    </ul>

                </div>)}
            </div>

            </div>
        )

}