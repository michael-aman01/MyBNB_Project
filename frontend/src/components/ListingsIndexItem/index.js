import "./listingsIndexItem.css"
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"

import { useEffect, useState} from "react";
import {  useHistory } from "react-router-dom";


export default function ListingsIndexItem({listing}){
    //add image fetch here
   const [currentPosition, setCurrentPosition] = useState()
   const [distance, setDistance] = useState()
    const history = useHistory()
    

    function calcDistance(someListing){
        
        const lat = someListing.coordinates.position.lat
        const lng = someListing.coordinates.position.lng
        const radLat1 = Math.PI * lat /180
        const radLat2 = Math.PI * currentPosition[0] /180
        const radtheta = Math.PI * (currentPosition[0] - lat)/180
        const dist1 = Math.sin(radLat1) * Math.sin(radLat2) + (Math.cos(radLat1) * Math.cos(radLat2) * Math.cos(radtheta))
        const distance = (Math.acos(dist1) * 180/Math.PI) * 60 * 1.1515
        return distance.toFixed(2)
    }


    function calcStats(reviewsArr){
        const keys = Object.keys(reviewsArr[0])
        const stats = {}
        const unwanted = ["id","created_at","updated_at","text","user_id","listing_id"]
        keys.filter(key => !unwanted.includes(key)).map(key => {
            
            let ratingsSum = reviewsArr.map(r => r[key]).reduce((a,b) => a + b, 0)
            let stat = ratingsSum/reviewsArr.length
            stats[key] = stat.toFixed(2)
        })
        const avg = Object.values(stats).map(val => parseInt(val)).reduce((a,b) => a +b, 0)/5
        stats["avg"] = avg
        console.log(stats)
        return stats
    }


    
    useEffect(() => {
        navigator.geolocation.getCurrentPosition(
            position => {
                setCurrentPosition([position.coords.latitude,position.coords.longitude])
            }
          )
          if(currentPosition !== undefined){
            setDistance(calcDistance(listing))
        }
   
      
    },[])
    const handleClick = (e) => {
        history.push(`/listings/${listing.id}`)
    }
    if(!listing){

        return null
    }else{

        return(
            <>

            <div className="listing" onClick={handleClick}>
                 <div className="image-container">
                    <div>
                    <img className="listing-image"src={listing.photo_urls[1]} alt=""></img>
                    </div>
  
       
                </div>
                <div className="info-container">
                    <div id="info-box">
                        <p>
                           <p>{listing.city}, {listing.state}</p> 
                           <p id="distance-dates">
                  
                              {distance} miles away
                            <br></br>
                                -
                           </p>
          
                
                             <b>${listing.price} per night</b>
                        </p>
           
                    </div>
                    <div id="rating-box">
                        {
                            listing.reviews.length > 0 ? 
                            <>
                            <img alt="" id="review-star" src={reviewStar}></img>
                                {calcStats(listing.reviews).avg.toFixed(1)}
                            <b>    
                            </b>
                            </>
                            :
                            null
                        }
              
                    </div>
                </div>


            </div>

            </>
    
        )
    }

}