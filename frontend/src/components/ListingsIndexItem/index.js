import "./listingsIndexItem.css"
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"
import rightArrow from "../../assets/right-arrow.png"
import { useEffect, useState} from "react";
import {  useHistory } from "react-router-dom";


export default function ListingsIndexItem({listing}){
    //add image fetch here


   const [distance, setDistance] = useState()
   const [currentImage, setCurrentImage] = useState(1)
    const history = useHistory()
    

    function calcDistance(someListing,currentPosition){
        
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
 
        return stats
    }

const closeOptions = (e) => {
    const options = Array.from(document.getElementsByClassName("nav-selection"))
    options.map(tag => tag.style.display = "none")
}
    
    useEffect(() => {
        navigator.geolocation.getCurrentPosition(
            position => {
                let d = calcDistance(listing,[position.coords.latitude,position.coords.longitude])
                setDistance(d)
            }
          )      
    },[listing
    ])


    const handleClick = (e) => {
        const navBar = document.getElementById("nav-container")

        history.push(`/listings/${listing.id}`)
    }
    if(!listing){

        return null
    }else{

        return(
            <>

            <div className="listing" onClick={closeOptions}>
                 <div className="image-container">
                    <div>
                        <div id="image-button-container">
                            <button id="image-button" onClick={() => currentImage === listing.photo_urls.length - 1 ? setCurrentImage(1) : setCurrentImage(currentImage + 1)}>
                                <img src={rightArrow} height="10px" ></img>
                            </button>
                        </div>
                        <div id="image-count">
                            {[...Array(listing.photo_urls.length -1).keys()].map((url,i) => i + 1 === currentImage ?
                                <div  style={{display:"block", backgroundColor: "white", height:"15px", width: "15px"}}  className="image-circle"></div>
                                :
                                <div style={{display:"block", backgroundColor: "white",  height:"10px", width: "10px", opacity: "50%"}}className="image-circle"></div>
                            )}
                        </div>
                        <img  onClick={handleClick} className="listing-image"src={listing.photo_urls[currentImage]} alt=""></img>
          
                    </div>
  
       
                </div>
                <div className="info-container" onClick={handleClick} >
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