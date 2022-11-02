import "./listingsIndexItem.css"

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
                            {listing.city}, {listing.state}
                            <br></br>
                            distance
                            <br></br>
                            dates
                            <br></br>
                            ${listing.price} per night
                        </p>
           
                    </div>
                    <div id="rating-box">rating</div>
                </div>
            </div>
            </>
    
        )
    }

}