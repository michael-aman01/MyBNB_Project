
import './Reviews.css'
import { useState, useEffect } from 'react'
import { fetchUser, fetchUsers } from "../../store/user";
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"
import { useDispatch, useSelector } from 'react-redux';
import {getUser} from '../../store/user'
import { useParams } from 'react-router-dom';
import { createReview } from '../../store/review';
import { fetchListing } from '../../store/data';

export default function Reviews({listing}){

    const [reviewers,setReviewers] = useState([null])
    const [reviewStats,setReviewStats] = useState()
    const dispatch = useDispatch()
    const {user_id} = useParams()
    const currentUser = useSelector(getUser)
    const [user,setUser] = useState()
    const [cleanliness, setCleanliness] = useState(5)
    const [communication, setCommunication] = useState(5)

    const [checkIn, setCheckIn] = useState(5)
    const [accuracy, setAccuracy] = useState(5)
    const [location, setLocation] = useState(5)
    const [text, setText] = useState("this is a usestate tess")
    const [currentListing, setCurrentListing] = useState(listing)

    function calcReviewAvgs(){
        const keys = ["cleanliness","communication","check_in","accuracy","location"]
        const reviews = currentListing.reviews
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
        
    },[])
    
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
            window.location.reload()
 
        }else{
            alert("fill out info")
        }

      
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
                                
                        {currentListing.reviews.slice(0,Math.floor(currentListing.reviews.length/2)).map((review,i) => 
                        <>
                                <div className="reviewer-info">
                                    {reviewers[0] !== null ? 

                                    <p>{reviewers[i]}</p>
                                    :
                                    null
                                }
                                </div>
                                <br></br>
                                <div className="review-text">
                                        <p>{review.text}</p> 
                                </div>
                                <br></br>
                                <br></br>
                                 </>
                                )}
                            
                        </div>
                    
                        <div id="details-right">
                                
                                {currentListing.reviews.slice(Math.floor(currentListing.reviews.length/2)).map((review,i) => 
                                <>
                                        <div className="reviewer-info">
                                            {reviewers[0] !== null ? 
        
                                            <p>{reviewers[i + Math.floor(currentListing.reviews.length/2)]}</p>
                                            :
                                            null
                                        }
                                        </div>
                                        <br></br>
                                        <div className="review-text" >
                                                <p>{review.text}</p> 
                                        </div>
                                        <br></br>
                                        <br></br>
                                         </>
                                        )}
                                </div>
                                </div>
                                <div id="create-review-container" onClick={handleCreate}>
                                    Write a review
                                </div>
                                <br></br>
                                <br></br>
                                <br></br>
                                <div id="review-border-line"></div>
                        </div>
        </>
    )}
}