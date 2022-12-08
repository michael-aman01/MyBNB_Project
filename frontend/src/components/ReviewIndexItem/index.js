import ReviewForm from "../ReviewForm"
import {useParams } from "react-router-dom"
import {useDispatch, useSelector} from 'react-redux'
import {getUser} from '../../store/user'
import { useEffect, useState } from "react"
import "./reviewIndexItem.css"
import { getListing } from "../../store/data"
import { useReducer } from "react"

import {useRef} from 'react'
import { deleteReview } from "../../store/review"

export default function ReviewsIndexItem({review, reviewer}){

    const {id} = useParams()
    const dispatch = useDispatch()
    const sessionUser = useSelector(getUser)
    const [user, setUser] = useState(sessionUser)
    
    const listing = useSelector(state => state.listings[id])
    const [currentReview, setCurrentReview] = useState({})

    useEffect(() => {
        setCurrentReview(review)
    },[])





    const openUpdateModal = (e) => {
        e.preventDefault()
        const modalTags = Array.from(document.getElementsByClassName('review-form-modal' )).filter(tag => tag.getAttribute("data-id") === e.target.getAttribute("data-id"))
        modalTags.map(tag => {
            tag.style.display = "flex" 
        })
    }

    const handleDelete = (e) => {
        e.preventDefault()
        dispatch(deleteReview(e.target.id))
        setCurrentReview(null)
    }

const months = ["Jan","Feb","March","April","May","June","July","Aug","Sept","Oct","Nov","Dec"]
if(reviewer !== undefined && Object.values(review).length > 0 && currentReview !== null){

    return (

    
               
            <>
            <div id="review-detail-container">
                   <div className="reviewer-info">
                        <div className="reviewer-name" >
                            <p> {reviewer.first_name}</p>
                             <p id="review-date"> {months[new Date(review.created_at).getMonth()].toLowerCase()} {new Date(review.created_at).getFullYear()}</p>
                        </div>
                        
                        <div className="review-text" >
                            {review["text"] }
                     
                        </div>
                        {
                            reviewer.id === user.id ? 
                            <>
                            <div  data-id={review.id} onClick={openUpdateModal} id="review-options-container">
                                    update
                                    
                                <div id={review.id} onClick={handleDelete} className="delete-review">delete</div>
                            </div>
                            <div id="reviews-container" >
                            <ReviewForm review={review}  type={'update'}></ReviewForm>
                            </div>  
                            </>
     
                            :
                            null
                        }
                        
                 </div>
                </div>
                            </>
                 
    )
}else{
    return (
        null
    )
}

}

    

