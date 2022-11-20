import "./listingsIndexItem.css"
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"

import { useEffect} from "react";
import {  useHistory } from "react-router-dom";


export default function ListingsIndexItem({listing}){
    //add image fetch here
   
    const history = useHistory()

    useEffect(() => {
      
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
                  
                              distance
                            <br></br>
                                dates
                           </p>
          
                
                             <b>${listing.price} per night</b>
                        </p>
           
                    </div>
                    <div id="rating-box">
                    <img alt="" id="review-star" src={reviewStar}></img>
                        <b>     5.0
                         
                         
                        </b>
                    </div>
                </div>


            </div>

            </>
    
        )
    }

}