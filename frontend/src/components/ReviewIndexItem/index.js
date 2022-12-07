import ReviewForm from "../ReviewForm"
import {useParams } from "react-router-dom"
import {useDispatch, useSelector, useStore} from 'react-redux'
import {getUser} from '../../store/user'
import { useEffect, useState } from "react"
import "./reviewIndexItem.css"
export default function ReviewsIndexItem({review, reviewer}){
    
    const {id} = useParams()
    const dispatch = useDispatch()
    const sessionUser = useSelector(getUser)
    const [user, setUser] = useState(sessionUser)

    



 

    const openModal = (e) => {
        e.preventDefault()
        const modalTags = Array.from(document.getElementsByClassName('review-form-modal' ))
        modalTags.map(tag => {
            tag.style.display = "flex" 
        })
    }
      
if(reviewer !== undefined && review !== undefined){
    return (

    
               
            <>
            <div id="review-detail-container">
                   <div className="reviewer-info">
                        <div className="reviewer-name" >
                            {reviewer.first_name}
                        </div>
                        
                        <div className="review-text">
                            {review.text}
                        </div>
                        {
                            reviewer.id === user.id ? 
                            <div onClick={openModal}>update</div>
                            :
                            null
                        }
                        
                     </div>
                    
               
                            {
                                reviewer.id === user.id ? 
                                <div id="reviews-container">
                                         <ReviewForm review={review}  type={'update'}></ReviewForm>
                                </div>

                           

                                :
                                 null
                                }
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

    

