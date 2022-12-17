import "./SearchResults.css"
import {useSelector} from 'react-redux'
import { useState } from "react"
import ListingIndexItem from '../ListingsIndexItem'
import { fetchListings } from "../../store/data"
import { useEffect } from "react"
import { useDispatch } from "react-redux"
import { useParams } from "react-router-dom"
import { Circle } from "@react-google-maps/api"
import ListingsIndexItem from "../ListingsIndexItem"

export default function SearchResults(){
    const dispatch = useDispatch()
    const [listings, setListings] = useState()
    const [filteredListings, setFilteredListings] = useState([])
    const {search_params} = useParams()
    const [city, setCity] = useState()
    const [checkInDate, setCheckInDate] = useState()
    const [checkOutDate, setCheckOutDate] = useState()

    const cities = {
        "sf" : "California",
        "ny" : "New York",
        "mia": "Miami"
    }

    useEffect(() => {
        if(filteredListings.length === 0){
            dispatch(fetchListings())
            .then(res => {
             return res.listings
            })
            .then(data => {
             setListings(data)
             
             return getListings(data)
            })

        }

        

    },[filteredListings])

    useEffect(() => {
        if(search_params !== undefined){
            let params = search_params.split("&")
            setCity(params[0])
            setCheckInDate(params[1])
            setCheckOutDate(params[2])
      
            
        }
    },[search_params])



    function getListings(someListings){


            let matchResults = []
            let cityResults = Object.values(someListings).filter(l => l.state.trim() === cities[city])
            cityResults.map(listing => {
                let reservations = Object.values(listing.reservations)
                if(reservations.length === 0){
                    matchResults.push(listing)

                }else{
                    let checkIn = reservations.map(res => res.start_date).map(date => new Date(date))
                    let checkOut = reservations.map(res => res.end_date).map(date => new Date(date))
                    let diffDays = [...Array(checkIn.length).keys()].map(i => Math.ceil(checkOut[i] - checkIn[i])/(1000 * 3600 * 24))
                    let takenDates = []
            
                    diffDays.map((diff,index) => {
                        for(let i = 0; i <= diff; i++){
                            let date = new Date(checkIn[index].getTime()  +  (60*60*24* i * 1000)).toISOString().split("T")[0]
                            takenDates.push(date)
                        }
                    })

                    if(!takenDates.includes(checkInDate) && !takenDates.includes(checkOutDate)){
                        matchResults.push(listing)
                    }
                }
            })
                setFilteredListings(matchResults)
        }
        
    

  


  
  

    if(filteredListings.length > 0 && search_params !== undefined && listings !== null){

        return (
            <>
                <div>
                    {filteredListings !== null ? 
                    filteredListings.map(listing => <ListingsIndexItem listing={listing}></ListingsIndexItem>)
                    :
                    null
                    }
                </div>
            </>
        )
    }else{
        return (
            <>
                <div>loading...</div>
            </>
        )
    }
}