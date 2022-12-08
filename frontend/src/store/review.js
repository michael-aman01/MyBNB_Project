import csrfFetch from "./csrf"
import { fetchListings } from "./data"


const ADD_REVIEW = 'reviews/ADD_REVIEW'
const REMOVE_REVIEW = 'reviews/REMOVE_REVIEW'

export const addReview = review => {
    return (
        {
            type: ADD_REVIEW,
            review
        }
    )
}

export const removeReview = reviewId => {
    return (
        {
            type: REMOVE_REVIEW,
            reviewId
        }
    )
}


export const createReview = review => async dispatch => {
    const res = await csrfFetch(`/api/listings/${review.listing_id}}/reviews`,{
        method: "POST",
        body: JSON.stringify(review)
    })

    const data = await res.json()
    if(data){
        return dispatch(addReview(data))
    }else{
        return null
    }
}


export const updateReview = review => async dispatch => {
    const res = await csrfFetch(`/api/reviews/${review.id}`,{
        method: "PATCH",
        body: JSON.stringify(review)
    })
    const data = await res.json()
    if(data){
        return dispatch(addReview(review))
    }else{
        return null
    }
}


export const deleteReview = reviewId => async dispatch => {
    const res = await csrfFetch(`/api/reviews/${reviewId}`,{
        method: "DELETE"
    })
    const data = await res.json()
    if(data){
        return dispatch(fetchListings())
    }else{
        return null
    }
}

export default function ReviewReducer(state={},action){
    switch(action.type){
        case ADD_REVIEW:
            return {...state,...action.review}
        case REMOVE_REVIEW:
            let newState = {...state}
            delete newState[action.reviewId]
            return  newState
            
        default:
            return state
    }
}
