import "./listingsIndexItem.css"
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"
import { getImages } from "../../store/data";
import { fetchImages, fetchListings, getListings } from "../../store/data";
import { useDispatch, useSelector } from "react-redux";
import { useDebugValue, useEffect, useRef } from "react";

export default function ListingsIndexItem({listing}){
    //add image fetch here
    const dispatch = useDispatch()

    useEffect(() => {

    },[])
    if(!listing){

        return null
    }else{

        return(
            <>
                <div id="item-container">
                <div id="image-container">
                    <img src={listing.image_urls[0]}></img>
                </div>
                <div id="info-container">
                    <div id="info-box">
                        <p>
                           <b>{listing.city}, {listing.state}</b> 
                            <br></br>
                            distance
                            <br></br>
                            dates
                            <br></br>
                            <b>${listing.price} per night</b>
                        </p>
           
                    </div>
                    <div id="rating-box">
                        <b>
                         
                            <img id="review-star" src={reviewStar}></img>
                            {listing.rating === null ? "N/A" : listing.rating}
                        </b>
                    </div>
                </div>
            </div>
            </>
    
        )
    }

}