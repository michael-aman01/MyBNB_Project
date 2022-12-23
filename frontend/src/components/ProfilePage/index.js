
import "./ProfilePage.css"
import ReservationIndexPage from "../ReservationsIndex"
import { useSelector, useStore } from "react-redux"
import { useEffect, useState } from "react"
import ReviewsIndexItem from "../ReviewIndexItem"
import { fetchListings,fetchListing } from "../../store/data"
import { useDispatch } from "react-redux"
import { fetchUser, getUser } from "../../store/user"
import { useParams } from "react-router-dom"
import LoadingSpinner from "../LoadingSpinner"
import { useHistory } from "react-router-dom"
export default function ProfilePage(){
    
    const user = useSelector(state => state.user)
    const history = useHistory()
    const [reviewListings, setReviewListings] = useState([])
    const stateListings = useSelector(state => state.listings)
    const [photoUrls, setPhotoUrls] = useState()
    const [listings, setListings] = useState([])
    const dispatch = useDispatch()
    const {user_id} = useParams()

  
  
    useEffect(() => {
      
        dispatch(fetchUser(user_id))
        
        dispatch(fetchListings())

        setListings(stateListings)
        
    },[])

    useEffect(() => {
        if(user.user){
            setListings(user.user.reviews.map(review => stateListings[review.listing_id]))

        
        }

    },[user.user,stateListings])

    useEffect(() => {
        if(listings[0] !== undefined && user.user){


                setPhotoUrls(listings.map(listing => listing.photo_urls[1]))
          
            

        }
        
    },[listings, user.user])


    const handleShowPage = listing => {
    
        history.push(`/listings/${listing.id}`)
    }

    if(user.user && listings !== undefined){

    return (
        <>
        <div id="profile-header-container">
               <p id="profile-header-title" >Trips</p>
        </div>
        <div id="profile-container">
 
        <ReservationIndexPage />
        </div>
        {user.user.reviews.length > 0  ? 
             <div id="profile-header-container">
             <p id="profile-header-title" >Reviews</p>
          
             <div id="profile-container">
             <div className="profile-review-container">
           
             
                     {user.user.reviews.map((review,i)  => 
                     <>
                            <div className="profile-review-widget">
                            <div className="profile-review-image">
                                {
                                    photoUrls === undefined ? 
                                    <LoadingSpinner></LoadingSpinner>
                                    :
                           
                                    <div className="profile-review-image-container" onClick={() => handleShowPage(listings[i])}><img src={photoUrls[i]} className="profile-review-image"></img></div>
                                }
                            </div>
                            {
                                listings[i] !== undefined ?
                                <div className="profile-reviews-details">
                                <div id="review-title">
                                    <p style={{"fontSize":"20px","lineHeight":"1.6", "fontWeight":"600"}}>{listings[i].sub_title}</p>
                                    <p style={{"fontSize":"20px"}}>{listings[i].city}</p>
                                    </div>
                                <div id="review-content">
                                <ReviewsIndexItem review={review} reviewer={user.user}></ReviewsIndexItem>
                                </div>
                              
                            </div>
                            :
                            <LoadingSpinner></LoadingSpinner>
                            }
              
             
                            </div>
                     </>
                     )}

            

  
             </div>
      
        </div>

        </div>
    
        : null
    }
   
</>
    )
}else{
    return <LoadingSpinner></LoadingSpinner>
}
}
