
import { useState } from "react"
import {useParams } from "react-router-dom"
import {useDispatch, useSelector} from 'react-redux'
import ReviewsIndexItem from "../ReviewIndexItem"
import fetchListings from "../../store/data"
import "./reviewsIndex.css"
import { useEffect } from "react"
import { fetchUsers, getUser } from "../../store/user"
import ReviewForm from "../ReviewForm"
import reviewStar from '../../assets/Five_Pointed_Star_Solid.svg'
export default function ReviewsIndex(){
    const {id} = useParams()
    const dispatch = useDispatch()
    const newReview = useSelector(state => state.review)
    const currentUser = useSelector(getUser)
    
    const listings = useSelector(state => state.listings)
    const [currentListing, setCurrentListing] = useState(listings[id])
    const [reviews, setReviews] = useState(currentListing.reviews)
    const [reviewers, setReviewers] = useState()
    const [stats, setStats] = useState()

    function calcStats(reviewsArr){
        const keys = Object.keys(reviewsArr[0])
        const stats = {}
        const unwanted = ["id","created_at","updated_at","text","user_id","listing_id"]
        keys.filter(key => !unwanted.includes(key)).map(key => {
            
            let ratingsSum = reviewsArr.map(r => r[key]).reduce((a,b) => a + b, 0)
            let stat = ratingsSum/reviewsArr.length
            stats[key] = stat.toFixed(2)
        })
        const avg = Object.values(stats).map(val => parseInt(val)).reduce((a,b) => a +b, 0)/5
        stats["avg"] = avg

        return stats
    }

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
        if(reviews !== undefined){
            let currentReviewsIndex = [...reviews,newReview]
            setReviews(currentReviewsIndex)
        }
    },[newReview])

    useEffect(() => {
        if(currentListing === undefined || currentListing=== null){
            dispatch(fetchListings())
            
        }
        if(reviews.length > 0){
            setStats(calcStats(reviews))
        }
    },[])

    useEffect(() => {
        const index = reviews.map((rev,i) => rev.id === newReview.id ? i : null).filter(val => val !== null)[0]
        const newReviews =  [...reviews]
        newReviews[index] = newReview
        setReviews(newReviews)
    },[listings])






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





    useEffect(() => {
        const index = reviews.map((rev,i) => rev.id === newReview.id ? i : null).filter(val => val !== null)[0]
        const newReviews =  [...reviews]
        newReviews[index] = newReview
        setReviews(newReviews)
       
    },[newReview])
      





    if(reviewers !== undefined && reviews !== undefined){
   
        return(
            <>
            <div id="reviews-container">
               <div id="reviews-header">
                <div>
                    {reviews.length === 0 ? 
                    "0 Reviews" 
                    : 
                    <>
                <img height="25px" width="25px" src={reviewStar}></img>
                    {  `${stats["avg"]} (${reviews.length} Reviews)`}
                    <div id="review-stats-container">
                    
                    <ul>
                    <div>Cleanliness: {stats.cleanliness}</div>
                    <div>Accuracy: {stats.accuracy}</div>
                    <div>Communication: {stats.communication}</div>
                    <div>Location: {stats.location}</div>
                        <div>Check-in: {stats.check_in}</div>

                    </ul>
                    <ul>
          

                    </ul>
                    
                </div>
                    </>
          
                    }
                
                </div>


                
                </div> 

                {reviews.map((review,i) => 
                <div id="review-details-item">
                            <ReviewsIndexItem review={review}  reviewer={reviewers[i]}></ReviewsIndexItem>
                    </div>
                )

                }
                <br></br>
                <div id="create-review-container"  data-id="create" onClick={openCreateModal}>
                    Write a review
                </div>
                <ReviewForm review={createReviewObj} type={"create"}></ReviewForm>
                
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