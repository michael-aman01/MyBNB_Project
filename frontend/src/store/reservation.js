import csrfFetch from "./csrf"

export const ADD_RESERVATION = "listings/ADD_RESERVATION"
export const ADD_RESERVATIONS = "listings/ADD_RESERVATIONS"
export const REMOVE_RESERVATION = "listings/REMOVE_RESERVATION"


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
    switch(action.type){
        case ADD_RESERVATIONS:
            return {...action.reservations}
        case ADD_RESERVATION:
            return {...state, ...action.reservation}
        case REMOVE_RESERVATION:
            let newState = {...state}
            delete newState[action.reservation.id]
            return newState
        default:
            return state
    }
}