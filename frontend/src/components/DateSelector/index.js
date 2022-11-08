import './DateSelector.css'
import { useState } from 'react'


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
            if(e.target.id === "up"){
                if(selectedMonth === calendarMonths.length -1){
                    setSelectedMonth(calendarMonths.length - 1)
                    setYear(calendarYears[selectedMonth -1])
                }else{
                    setSelectedMonth(selectedMonth + 1)
                    setYear(calendarYears[selectedMonth + 1])
                }
                setMonth(calendarMonths[selectedMonth])
                setYear(calendarYears[selectedMonth])
                console.log(calendarDates)
            }else{
                if(selectedMonth  === 0){
                    setSelectedMonth(0)
                    setYear(0)
                }else{
                    setSelectedMonth(selectedMonth -1)
                    setYear(selectedMonth - 1)
                }
                setMonth(calendarMonths[selectedMonth])
                setYear(calendarYears[selectedMonth])
                console.log(calendarDates)
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
        const dates = getDates(month,year)
        console.log(typeof dates[0][0].toString())
        
        return(
            <div id="date-selector-container">
                <div id="calendar-header">
                <button placeholder='<' id="down"  onClick={handleClick}> </button>
                <span>{month} {year}</span>

                <button placeholder='<' id="up" onClick={handleClick}> </button>
            </div>
            <div id="calendar-container">
                {calendarHeader.map((day,i) => 
                <div>
                    {day}
              
                    <ul>
                        {dates[i].map(date  => <li>{date.getDate().toString()}</li>)}
                
                    </ul>

                </div>)}
                        {/* <div>sun</div>
                        <div>mon</div>
                        <div>tue</div>
                        <div>wed</div>
                        <div>thurs</div>
                        <div>fri</div>
                        <div>sat</div> */}
            </div>

            </div>
        )

}