
import './Reviews.css'
import { useState, useEffect } from 'react'
import { fetchUser, fetchUsers } from "../../store/user";
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"
import { useDispatch, useSelector } from 'react-redux';
import {getUser} from '../../store/user'
import { useParams } from 'react-router-dom';
import { createReview } from '../../store/review';
import ReactSlider from "react-slider";
import xMark from "../../assets/iconmonstr-x-mark-1.svg"
import ReviewItem from '../ReviewIndexItem';

export default function Reviews({listing}){

    const [reviewers,setReviewers] = useState([null])
    const [reviewStats,setReviewStats] = useState()
    const dispatch = useDispatch()
    const {user_id} = useParams()
    const currentUser = useSelector(getUser)
    const [user,setUser] = useState()
   
    const [cleanliness, setCleanliness] = useState()
    const [communication, setCommunication] = useState()

    const [checkIn, setCheckIn] = useState()
    const [accuracy, setAccuracy] = useState()
    const [location, setLocation] = useState()
    const [text, setText] = useState("this is a usestate tess")
    const [currentListing, setCurrentListing] = useState(listing)
    const [reviews, setReviews] = useState(currentListing.reviews)

    
    function calcReviewAvgs(){
        const keys = ["cleanliness","communication","check_in","accuracy","location"]
       
        const grouped = {}

        keys.map(key => {
            let total =  (reviews.map(review => review[key]).reduce((a,b) => a + b, 0)/reviews.length).toFixed(2)
            grouped[key] = total
        })
     
        let avgScore = (Object.values(grouped).map(val => parseFloat(val)).reduce((a,b) => a + b, 0)/keys.length).toFixed(2)
        grouped["avg-score"] = avgScore
        return grouped

    }

    useEffect(() => {
        dispatch(fetchUser(user_id))
        setUser(currentUser)
        
    },[])

    useEffect(() => {
        if(currentListing !== undefined && reviewers[0] === null){
            const users = []
            currentListing.reviews.map(async review => {
    
                let res = await dispatch(fetchUsers())
            
                let user = await res.users[review.user_id]
           
                users.push(user.first_name)
            })
            setReviewers(users)
            let stats = calcReviewAvgs()
            setReviewStats(stats)
        }
        
    },[currentListing])
    
    const toggleReviewModal = (e) => {
        e.preventDefault()
        const modalTags = Array.from(document.getElementsByClassName('review-form-modal' ))
        modalTags.map(tag => {

            tag.style.display === "none" ? tag.style.display = "flex" : tag.style.display = "none"
        })

    }
    
    const handleCreate = async (e) => {
        e.preventDefault()
        const review = {
            "cleanliness": cleanliness,
            "accuracy": accuracy,
            "location": location,
            "communication":communication,
            "check_in": checkIn,
            "user_id": user.id,
            "listing_id": currentListing.id,
            "text": text
        }
        let check = Object.values(review).filter(val => val === undefined).length > 0 ? false : true
        if(check === true){
            const res = await dispatch(createReview(review))
            let updatedReviews = [...reviews, review]
            let updatedReviewers = [...reviewers, currentUser.firstName]
            let updatedListing = currentListing
            updatedListing["reviews"] = updatedReviews
            updatedListing["reviewers"] = updatedReviewers
            setCurrentListing(updatedListing)
            setReviews(updatedReviews)
            setReviewers(updatedReviewers)
            let stats = calcReviewAvgs()
            setReviewStats(stats)
            
        }else{
            alert("fill out info")
        }
    }

    const handleUpdate = (e) => {
        e.preventDefault()
    }

    const handleDelete = (e) => {
        e.preventDefault()
    }
    if(reviewers[0] === null){
        return null
    }else{
        console.log(reviewers)
        calcReviewAvgs()
    return (
        <>
                <div id="reviews-container">
                <br></br>
                <br></br>
                    <div id="avg-review-score">
                        <img height="30px" width="30px" src={reviewStar}></img>
                       <span>{reviewStats !== undefined ? `${reviewStats["avg-score"]}  ·  ${currentListing.reviews.length} reviews` : null} </span> 
               
                        </div>
                    <br></br>
                    <br></br>
                    <div id="review-summary-container">
                        <div className="review-summary-half">
                            <div className="review-item">
                                <div>Cleanliness</div>
                                <div>{reviewStats !== undefined ? reviewStats["cleanliness"] : null}</div>
                            </div>
   
                            <div className="review-item">
                                <div>Communication</div>
                                <div>{reviewStats !== undefined ? reviewStats["communication"] : null}</div>
                            </div>
                            <div className="review-item">
                                <div>Check-in</div>
                                <div>{reviewStats !== undefined ? reviewStats["check_in"] : null}</div>
                            </div>
                        </div>
                        <div className="review-summary-half">
                 
                            <div className="review-item">
                                <div>Accuracy</div>
                                <div>{reviewStats !== undefined ? reviewStats["accuracy"] : null}</div>
                            </div>
                            <div className="review-item">
                                <div>Location</div>
                                <div>{reviewStats !== undefined ? reviewStats["location"] : null}</div>
                            </div>
             
                        </div>
                        </div>
                        <br></br>
                        <div id="review-details-container">
                        <div id="details-left">
                                <ReviewItem currentListing={currentListing} reviewers={reviewers} currentUser={currentUser}/>

                            
                        </div>
                    
                        <div id="details-right">
                                <ReviewItem currentListing={currentListing} reviewers={reviewers} currentUser={currentUser}/>
                        </div>
                                </div>
                                <div id="create-review-container">
                                    <span onClick={toggleReviewModal} className="toggle-review-button">Write a review</span>
                                    <div id="review-modal" className='review-form-modal' >
                                    <div id="review-modal-background" className='review-form-modal'  >
                                    <div id="review-modal-content"className='review-form-modal'  >
                                        <div id="review-modal-header">
                                            <img onClick={toggleReviewModal} width="20px" heigh="20px" alt="" src={xMark} className="toggle-review-button"></img>
                                            <div id="review-banner">Write a Review</div>
                                      
                                        </div>
                                        <div id="review-input-container">
                                            <div className='review-rating-item'>
                                            <div>
                                                Accuracy: 
                                            </div>
                                            <div className='slide-container'>
                                                <ReactSlider
                                                    className='review-slider'
                                                    trackClassName='review-track'
                                                    thumbClassName='review-thumb'
                                                    onChange={(e) => setAccuracy(e)}
                                                />
                                            </div>
                                            <div className='review-rating-display'></div>
                                                        {accuracy === undefined ? 0 : accuracy}
                                            </div>
                                            <div className='review-rating-item'>
                                            <div>
                                                Communication: 
                                            </div>
                                            <div className='slide-container'>
                                                <ReactSlider
                                                    className='review-slider'
                                                    trackClassName='review-track'
                                                    thumbClassName='review-thumb'
                                                    onChange={(e) => setCommunication(e)}
                                                />
                                            </div>
                                            <div className='review-rating-display'></div>
                                                        {communication}
                                            </div>
                                           
                                            <div className='review-rating-item'>location</div>
                                            <div className='review-rating-item'>check-in</div>
                                            <div className='review-rating-item'>cleanliness</div>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                                </div>
                                <br></br>
                                <br></br>
                                <br></br>
                                <div id="review-border-line"></div>
                        </div>
        </>
    )}
}