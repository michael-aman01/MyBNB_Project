import "./listingsIndexItem.css"
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"
export default function ListingsIndexItem({listing}){
    if(!listing){
        return null
    }else{
        return(
            <>
                <div id="item-container">
                <div id="image-container">
                    image
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