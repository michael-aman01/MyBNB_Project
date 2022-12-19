import "./SearchResults.css"
import { useState } from "react"
import { fetchListings } from "../../store/data"
import { useEffect } from "react"
import { useDispatch } from "react-redux"
import { useParams } from "react-router-dom"
import Map from "../Map"
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
        "ny" : "NY",
        "mia": "FL"
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
            let cityResults = city !== "flex" ? Object.values(someListings).filter(l => l.state.trim() === cities[city]) : Object.values(someListings)
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
        
    

  

        const mapStyles = {        
            display: "flex",
            width: "100%",
            height: "100%",
            minWidth: "100%",
            minHeight: "100%",
        
        };
      
  
  

    if(filteredListings.length > 0 && search_params !== undefined && listings !== null){

        return (
            <>
                <div id="search-results-container">
                    <div id="search-listings-container">
                    {filteredListings !== null ? 
                        filteredListings.map(listing => 
                            <div className="search-listings-grid-item">
                                <ListingsIndexItem listing={listing}></ListingsIndexItem>
                            </div>
                     )

                        :
                        null
                        }
                    </div>
            
                    <div id="search-map-container" className="sticky">

                        <Map listing={filteredListings[0]} mapStyles={mapStyles}></Map>
                    </div>
        
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

