

export const ADD_LISTINGS = "listings/GET_LISTINGS"
export const ADD_IMAGES = "listings/GET_IMAGES"
export const ADD_IMAGE = "listings/GET_IMAGE"

export const addListings = listings => {
    return({
        type: ADD_LISTINGS,
        listings
    })
}

export const REMOVE_LISTINGS = "listings/REMOVE_LISTINGS"
export const removeListings = () => {
    return({
        type: REMOVE_LISTINGS,

    })
}

export const addImages = images => {
    return ({
        type: ADD_IMAGES,
        images
    })
}

export const addImage = image => {
    return ({
        type: ADD_IMAGE,
        image
    })
}



export const getImages = () => state => {
    if(state.images){
        return state.images
    }
}
export const getListings = () => state => {
    
    return Object.values(state.listings)

}


export const fetchImages = () => async dispatch => {
    const res = await fetch("/api/images")
    const data = await res.json()
    if(data){
        return dispatch(addImages(data))
    }
}



export const fetchListings = () => async dispatch => {
    const res = await fetch("/api/listings")
    const data = await res.json()
    if(data){
        return dispatch(addListings(data))
    } 
}



export default function ListingsReducer(state={listings: null}, action){
    switch(action.type){
        case ADD_LISTINGS:
            return {...action.listings}
        case REMOVE_LISTINGS:
            const newState = {...state, listings: null}
            return newState

        default:
            return state
    }

}

export function ImageReducer(state={images:null}, action){
    switch(action.type){
        case ADD_IMAGES:
            return {...state, ...action.images}
        default:
            return state
    }
}