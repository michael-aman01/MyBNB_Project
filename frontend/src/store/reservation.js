import csrfFetch from "./csrf"

export const ADD_RESERVATION = "listings/ADD_RESERVATION"
export const ADD_RESERVATIONS = "listings/ADD_RESERVATIONS"
export const ADD_CHECKIN = "listings/ADD_CHECKIN"
export const REMOVE_CHECKIN = "listings/REMOVE_CHECKIN"
export const ADD_CHECKOUT = "listings/ADD_CHECKOUT"
export const REMOVE_CHECKOUT = "listings/REMOVE_CHECKOUT"
export const REMOVE_RESERVATION = "listings/REMOVE_RESERVATION"


export const addCheckin = checkin => {
    return({
        type: ADD_CHECKIN,
        checkin
    })
}

export const addCheckout = checkout => {
    return({
        type: ADD_CHECKOUT,
        checkout
    })
}

export const removeReservation = reservation => {
    return(
        {
            type: REMOVE_RESERVATION,
            reservation
        }
    )
}



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

export const getReservations = () => state => {
    return state.reservations
}

export const getCheckIn = () => state => {
    if(state){
        return state.checkin
    }else{
        return null
    }
}

export const getCheckOut = () => state => {
    if(state.reservations.checkout){
        return state.checkout
    }else{
        return null
    }
}


export const fetchRerservations = listingId => async dispatch => {
    const res = await fetch(`/api/listings/${listingId}/reservations`)
    const data  = await res.json()
    console.log(data)
    if(data){
        return dispatch(addReservations(data))
    }
}

export const makeReservation = reservation => async dispatch => {
    const res = await csrfFetch(`/api/users/${reservation.user_id}/reservations`,{
        method: "POST",
        body: JSON.stringify(reservation)
    })
    const data = await res.json()
    if(data){
        return dispatch(addReservation(reservation))
    }
}

export const cancelReservation = reservation => async dispatch => {
    const res = await csrfFetch( `/api/users/${reservation.user_id}/reservations/${reservation.id}`, {method: "DELETE"})
   const data = await res.json()
    if(data){
        return dispatch(getReservations(data))
    }
}


export default function ReservationsReducer(state={},action){
    let newState
    switch(action.type){
   
        case ADD_RESERVATIONS:
            return {...action.reservations}
        case ADD_RESERVATION:
            return {...state, ...action.reservation}
        case REMOVE_RESERVATION:
            newState = {...state}
            delete newState[action.reservation.id]
            return newState
        case ADD_CHECKIN:
            return {...state, checkin: action.checkin}
        
        case REMOVE_CHECKIN:
            newState = {...state}
            delete newState.checkin
            return newState

        case ADD_CHECKOUT:
            return {...state, checkout: action.checkout}
        
        case REMOVE_CHECKOUT:
            newState = {...state}
            delete newState.checkout
            return newState

        default:
            return state
    }
}