
import { useState } from "react"
import {useParams } from "react-router-dom"
import {useDispatch, useSelector} from 'react-redux'
import ReviewsIndexItem from "../ReviewIndexItem"
import fetchListings from "../../store/data"
import "./reviewsIndex.css"
import { useEffect } from "react"
import { fetchUsers, getUser } from "../../store/user"
import ReviewForm from "../ReviewForm"

export default function ReviewsIndex(){
    const {id} = useParams()
    const dispatch = useDispatch()
    const currentUser = useSelector(getUser)
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
        if(reviewers === undefined){
            allUsers()
        }

    },[])

    useEffect(() => {
        if(currentListing === undefined || currentListing=== null){
            dispatch(fetchListings())
            
        }
    },[])

    const createReviewObj =  {
        "cleanliness":  0,
        "communication": 0,
        "accuracy": 0,

        "check_in": 0,
        "location": 0,
        "user_id": currentUser.id ,
        "listing_id": id,
        "text": '',
    }

    const openCreateModal = (e) => {
        e.preventDefault()
      
        const modalTags = Array.from(document.getElementsByClassName('review-form-modal' )).filter(tag => tag.getAttribute("data-id") === "create")

        modalTags.map(tag => {
            tag.style.display = "flex" 
        })
    }



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
                <br></br>
                <div id="create-review-container"  onClick={openCreateModal}>
                    Write a review
                    <ReviewForm review={createReviewObj} type={"create"}></ReviewForm>
                </div>
                
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