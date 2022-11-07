import csrfFetch from "./csrf"


export const ADD_LISTINGS = "listings/ADD_LISTINGS"
export const ADD_LISTING = "listings/ADD_LISTING"
export const ADD_IMAGES = "listings/ADD_IMAGES"
export const ADD_IMAGE = "listings/ADD_IMAGE"

export const ADD_RESERVATION = "listings/ADD_RESERVATION"
export const ADD_RESERVATIONS = "listings/ADD_RESERVATIONS"



export const addReservation = reservation => {
    return({
        type: ADD_RESERVATION,
        reservation
    })
}


export const addReservations = reservations => {
    return({
        type: ADD_RESERVATIONS,
        reservations
    })
}
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


export const getReservations = () => state => {
    return state.reservations
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




export const makeReservation = reservation => async dispatch => {
    const res = await csrfFetch(`/api/listings/${reservation.listing_id}/reservations`,{
        method: "POST",
        body: JSON.stringify(reservation)
    })
    const data = await res.json()
    if(data){
        return dispatch(addReservation(data))
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




