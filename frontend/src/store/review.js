import csrfFetch from "./csrf"


const ADD_REVIEW = 'reviews/ADD_REVIEW'

export const addReview = review => {
    return (
        {
            type: ADD_REVIEW,
            review
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
        return dispatch(addReview(data))

    }else{
        return null
    }
}

export default function ReviewReducer(state={},action){
    switch(action.type){
        case ADD_REVIEW:
            return {...state,...action.review}
        default:
            return state
    }
}
