import "./listingsIndexItem.css"
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"
import { getImages } from "../../store/data";
import { fetchImages, fetchListings, getListings } from "../../store/data";
import { useDispatch, useSelector } from "react-redux";
import { useDebugValue, useEffect, useRef } from "react";
import { NavLink, useHistory } from "react-router-dom";
import ShowPage from "../ShowPage";
import { Routes, Route, useParams } from 'react-router-dom';

export default function ListingsIndexItem({listing}){
    //add image fetch here
    const dispatch = useDispatch()
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

            <div id="item-container" onClick={handleClick}>
                 <div id="image-container">
                    <div>
                    <img className="listing-image"src={listing.image_urls[0]}></img>
                    </div>
  
       
                </div>
                <div id="info-container">
                    <div id="info-box">
                        <p>
                           <b>{listing.city}, {listing.state}</b> 
                           <p id="distance-dates">
                  
                              distance
                            <br></br>
                                dates
                           </p>
          
                
                             <b>${listing.price} per night</b>
                        </p>
           
                    </div>
                    <div id="rating-box">
                    <img id="review-star" src={reviewStar} width="1px" height="10px"></img>
                        <b>     5.0
                         
                          
                     
                        </b>
                    </div>
                </div>


            </div>

            </>
    
        )
    }

}