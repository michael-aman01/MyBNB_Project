import ReactSlider from "react-slider";
import xMark from "../../assets/iconmonstr-x-mark-1.svg"
import { createReview } from '../../store/review';
import { useState } from 'react'
import { useDispatch } from "react-redux";

export default function ReviewForm(){
    const dispatch = useDispatch()
    const [cleanliness, setCleanliness] = useState()
    const [communication, setCommunication] = useState()

    const [checkIn, setCheckIn] = useState()
    const [accuracy, setAccuracy] = useState()
    const [location, setLocation] = useState()
    const [text, setText] = useState("this is a usestate tess")


    const toggleReviewModal = (e) => {
        e.preventDefault()
        const modalTags = Array.from(document.getElementsByClassName('review-form-modal' ))
        modalTags.map(tag => {

            tag.style.display === "none" ? tag.style.display = "flex" : tag.style.display = "none"
        })

    }

    
    return (
        <>
                           
                             
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
                            
                            
        </>
    )
}