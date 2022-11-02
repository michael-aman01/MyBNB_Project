

export const ADD_LISTINGS = "listings/GET_LISTINGS"
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



export const getListings = () => state => {
    
    return Object.values(state.listings)

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