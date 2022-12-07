
import { useState } from "react"
import {useParams } from "react-router-dom"
import {useDispatch, useSelector} from 'react-redux'
import ReviewsIndexItem from "../ReviewIndexItem"
import fetchListings from "../../store/data"
import "./reviewsIndex.css"
import { useEffect } from "react"
import { fetchUsers } from "../../store/user"

export default function ReviewsIndex(){
    const {id} = useParams()
    const dispatch = useDispatch()
    const listings = useSelector(state => state.listings)
    const [currentListing, setCurrentListing] = useState(listings[id])
    const [reviews, setReviews] = useState(currentListing.reviews)
    const [reviewers, setReviewers] = useState()

    useEffect(() => {
        let allUsers = async () => {
            let res = await dispatch(fetchUsers())
            let users = res["users"]
            let reviewerIds = reviews.map(rev => rev.user_id.toString())
            let currentReviewers = reviewerIds.map(id => users[id])
            setReviewers(currentReviewers)

        }
        allUsers()
    },[])

    useEffect(() => {
        if(currentListing === undefined || currentListing=== null){
            dispatch(fetchListings())
            
        }
    },[])

    useEffect(() => {
        alert("change detected by reviews index")
    },[reviews])

    if(reviewers !== undefined && reviews !== undefined){
        return(
            <>
            <div id="reviews-container">
                reviews

                {reviews.map((review,i) => 
                <div id="review-details-item">
                            <ReviewsIndexItem review={review}  reviewer={reviewers[i]}></ReviewsIndexItem>
                    </div>
                )

                }
            </div>
            </>
        )
    }else{
        return (
            <div>
                loading
            </div>
        )
    }


}