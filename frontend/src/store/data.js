import csrfFetch from "./csrf"


export const ADD_LISTINGS = "listings/ADD_LISTINGS"
export const ADD_LISTING = "listings/ADD_LISTING"
export const ADD_IMAGES = "listings/ADD_IMAGES"
export const ADD_IMAGE = "listings/ADD_IMAGE"




export const addListings = listings => {
    return({
        type: ADD_LISTINGS,
        listings
    })
}

export const addListing = listing => {
    return({
        type: ADD_LISTING,
        listing
    })
}

export const REMOVE_LISTINGS = "listings/REMOVE_LISTINGS"
export const removeListings = () => {
    return({
        type: REMOVE_LISTINGS,

    })
}



export const getListings = () => state => {
    return Object.values(state.listings)
}

export const getListing = listingId => state => {
    
    return state.listings[listingId]
    
} 




export const fetchListings = () => async dispatch => {
    const res = await fetch("/api/listings")
    const data = await res.json()
    if(data){
        return dispatch(addListings(data))
    } 
}

export const fetchListing = listingId => async dispatch => {
    const res = await fetch(`/api/listings/${listingId}`)
    const data = await res.json()
    if(data){
        return dispatch(addListing(data))
    } 
}






export default function ListingsReducer(state={listings: null}, action){
    switch(action.type){
        case ADD_LISTINGS:
            return {...action.listings}
        case ADD_LISTING:
            return {...state, ...action.listing}
        case REMOVE_LISTINGS:
            const newState = {...state, listings: null}
            return newState
            
        default:
            return state
    }
}




