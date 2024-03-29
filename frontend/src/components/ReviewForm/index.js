
import './reviewForm.css'
import x from '../../assets/iconmonstr-x-mark-1.svg'
import ReactSlider from 'react-slider'
import {addReview, createReview, updateReview} from "../../store/review"
import { useDispatch } from 'react-redux'
import { useState } from 'react'
import { useHistory } from 'react-router-dom'
export default function ReviewForm({review, type}){

    const [communication, setCommunication] = useState(review.communication)
    const [accuracy, setAccuracy] = useState(review.accuracy)
    const [checkIn, setCheckIn] = useState(review.check_in)
    const [text, setText] = useState(review.text)
    const [location, setLocation] = useState(review.location)
    const [cleanliness, setCleanliness] = useState(review.cleanliness)
    

    const modalId = type === "create"? "create" : review.id

    const callbacks = {
        "cleanliness": (val) => setCleanliness(val),
        "communication": (val) => setCommunication(val),
        "accuracy": (val) => setAccuracy(val),

        "check_in": (val) => setCheckIn(val),
        "location": (val) => setLocation(val),
        "text": (val) => setText(val)
    }

    const reviewBody = {
        "cleanliness":  cleanliness,
        "communication": communication,
        "accuracy": accuracy,
 
        "check_in": checkIn,
        "location": location,
        "user_id": review.user_id,
        "listing_id": review.listing_id,
        "id": review.id,
        "text": text
    }
    const history = useHistory()
    const dispatch = useDispatch()

    const handleUpdateReview = async (e) => {
        e.preventDefault()

        let check = Object.values(reviewBody).filter(val => val === undefined).length === 0 ? true : false
        if(check){
            const res = await dispatch(updateReview(reviewBody))
          
            closeModal()
            alert("review updated")
            window.location.reload()
            return res
         
        }else{
            alert("please complete form")
        }
    }

    const handleCreateReview =async  (e) => {
        e.preventDefault()
        delete reviewBody.id
        let check = Object.values(reviewBody).filter(val => val === undefined).length === 0 ? true : false
      
        if(check && reviewBody.text !== ''){
 
            const res = await dispatch(createReview(reviewBody))
            
            closeModal()
            window.location.reload()
            return res
        }else{
            alert("please complete form")
        }
    }



    const closeModal = (e) => {
        
        const modalTags = Array.from(document.getElementsByClassName('review-form-modal' ))
     
        modalTags.map(tag => {

            tag.style.display = "none" 
        })

    }

    return(
        <>
  
        <div id="review-modal"  data-id={modalId} className='review-form-modal'>
             <div id="review-modal-background" data-id={modalId}  className='review-form-modal'>
                <div id="review-modal-content" data-id={modalId}  className='review-form-modal'>
                    <div id="review-modal-header">
                    <div id="review-banner" data-id={modalId} onClick={() => closeModal()}>
                        <img src={x} onClick={closeModal} height="20px"></img>
                        {type === "update" ? "Update Review" : "Write a Review"}
                    </div>
                    </div>
                    <div id="review-items-container">
                            {Object.keys(review).filter(reviewItem => ["id","created_at","updated_at","listing_id","user_id"].includes(reviewItem) === false).map((reviewItem,i) => 
                            <>
            
                            <div key={i} className="review-rating-item">
                            
                                {   reviewItem !== "text" ? (
                                    <>
                            <div className='review-update-option'>{reviewItem}:</div>
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
                                    <div>additional comments</div>
                                    <br></br>
                                    <div>
                                    <textarea id="review-textbox" onChange={(e) => setText(e.target.value)}>
                                        {reviewBody["text"]}
                                    </textarea>
                                    </div>
                                    </div>
                                    <br></br>
                   
                                    </>
                    }
                            </div>
              
                            </>
                            )}
                        
                    </div>
                    <div id="review-form-button-container">
                        <button id='review-submit-button' onClick={type === "update" ? handleUpdateReview : handleCreateReview}>submit</button>
                    </div>
                    </div>
             
            </div>
        </div>
        </>
    )
}