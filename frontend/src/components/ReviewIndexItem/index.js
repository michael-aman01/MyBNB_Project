import ReviewForm from "../ReviewForm"
import {useParams } from "react-router-dom"
import {useDispatch, useSelector} from 'react-redux'
import {getUser} from '../../store/user'
import { useEffect, useState } from "react"
import "./reviewIndexItem.css"
import { getListing } from "../../store/data"
import { useReducer } from "react"

import {useRef} from 'react'

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


if(reviewer !== undefined && Object.values(review).length > 0){

    return (

    
               
            <>
            <div id="review-detail-container">
                   <div className="reviewer-info">
                        <div className="reviewer-name" >
                            {reviewer.first_name}
                        </div>
                        
                        <div className="review-text" >
                            {review["text"] }
                     
                        </div>
                        {
                            reviewer.id === user.id ? 
                            <>
                            <div  data-id={review.id} onClick={openUpdateModal}>update</div>
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
        <div>
            loading..
        </div>
    )
}

}

    

