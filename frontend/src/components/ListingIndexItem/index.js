import "./listingIndexItem.css"

export default function ListingIndexItem({listing}){
    console.log(listing)
    return(
        <>
            <div id="item-container">
            <div id="image-container">
                image
            </div>
            <div id="info-container">
                <div id="info-box">info</div>
                <div id="rating-box">rating</div>
            </div>
        </div>
        </>

    )
}