
import './reviewForm.css'
import x from '../../assets/iconmonstr-x-mark-1.svg'
import ReactSlider from 'react-slider'
import {createReview, updateReview} from "../../store/review"
import { useDispatch } from 'react-redux'
import { useState } from 'react'
export default function ReviewForm({review, type}){

    const [communication, setCommunication] = useState(review.communication)
    const [accuracy, setAccuracy] = useState(review.accuracy)
    const [checkIn, setCheckIn] = useState(review.check_in)
    const [text, setText] = useState(review.text)
    const [location, setLocation] = useState(review.location)
    const [cleanliness, setCleanliness] = useState(review.cleanliness)

    const callbacks = {
        "cleanliness": (val) => setCleanliness(val),
        "communication": (val) => setCommunication(val),
        "accuracy": (val) => setAccuracy(val),
        "text": (val) => setText(val),
        "check_in": (val) => setCheckIn(val),
        "location": (val) => setLocation(val)
    }

    const reviewBody = {
        "cleanliness":  cleanliness,
        "communication": communication,
        "accuracy": accuracy,
        "text": text,
        "check_in": checkIn,
        "location": location,
        "user_id": review.user_id,
        "listing_id": review.listing_id,
        "id": review.id
    }






    const dispatch = useDispatch()

    const handleUpdate = async (e) => {
        e.preventDefault()
        let check = Object.values(reviewBody).filter(val => val === undefined).length === 0 ? true : false
        console.log(check)
        if(check){
            const res = await dispatch(updateReview(reviewBody))
            console.log(res)
            closeModal()
        }else{
            alert("please complete form")
        }
    }

    const handleCreate = () => {
        alert("create")
    }

    const openModal = (e) => {
        e.preventDefault()
        alert("e")
        const modalTags = Array.from(document.getElementsByClassName('review-form-modal' ))
        alert(modalTags.length)
        modalTags.map(tag => {
            tag.style.display = "flex" 
        })
    }

    const closeModal = () => {
    
        const modalTags = Array.from(document.getElementsByClassName('review-form-modal' ))
        modalTags.map(tag => {
            tag.style.display = "none" 
        })
    }
    console.log(review)
    return(
        <>
  
        <div id="review-modal"  className='review-form-modal'>
             <div id="review-modal-background" className='review-form-modal'>
                <div id="review-modal-content" className='review-form-modal'>
                    <div id="review-modal-header">
                    <div id="review-banner">
                        <img src={x} onClick={closeModal} height="20px"></img>
                        {type === "update" ? "Update Review" : "Write a Review"}
                    </div>
                    </div>
                    <div>
                            {Object.keys(review).filter(reviewItem => ["id","created_at","updated_at","listing_id","user_id"].includes(reviewItem) === false).map((reviewItem,i) => 
                            <>
                            
                            <div key={i} className="review-rating-item">
                            
                                {   reviewItem !== "text" ? (
                                    <>
                            <div className='review-update-option'>{reviewItem}</div>
                               <div className="slide-container">
                                        <ReactSlider
                                            className='review-slider'
                                            trackClassName='review-track'
                                            thumbClassName='review-thumb'
                                            onChange={(val) => callbacks[reviewItem](val)}
                                            min={0}
                                            max={5}
                                    />
                                </div> 
                               <div>{reviewBody[reviewItem]}</div> 
                                    </>
                                )
                              
                                    : 
                                    <>
                                  <div className='review-update-option'>
                                    {reviewItem}
                                    </div>
                                    <div>
                                        <textarea onChange={(e) => setText(e.target.value)}>
                                          {reviewBody["text"]}
                                        </textarea>
                                    </div>
                                    </>
                    }
                            </div>
              
                            </>
                            )}
                        
                    </div>
                    <div id="review-form-button-container">
                        <button onClick={type === "update" ? handleUpdate : handleCreate}>submit</button>
                    </div>
                    </div>
             
            </div>
        </div>
        </>
    )
}