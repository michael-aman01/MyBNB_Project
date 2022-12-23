
import "./ProfilePage.css"
import ReservationIndexPage from "../ReservationsIndex"
import { useSelector } from "react-redux"
import { useEffect, useState } from "react"
import ReviewsIndexItem from "../ReviewIndexItem"
import { fetchListings,fetchListing } from "../../store/data"
import { useDispatch } from "react-redux"
import { fetchUser, getUser } from "../../store/user"
import { useParams } from "react-router-dom"
import LoadingSpinner from "../LoadingSpinner"
export default function ProfilePage(){
    const user = useSelector(state => state.user)

    const [reviewListings, setReviewListings] = useState([])
    const stateListings = useSelector(state => state.listings)
    const [listings, setListings] = useState()
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
                <div className="profile-reviews-widget">
                    <div>
                     {user.user.reviews.map(review  => 
                     <>
                            <ReviewsIndexItem review={review} reviewer={user.user}></ReviewsIndexItem>
                       
                     </>
                     )}

                </div>

  
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
