

export const ADD_SEARCH_PARAMS = "search/ADD_SEARCH_PARAMS"

export const addSearchParams = search => {
    return (
        {
            type: ADD_SEARCH_PARAMS,
            search
        }
    )
}


export default function SearchReducer(initialState={},action){

    switch(action.type){
        case ADD_SEARCH_PARAMS:
            return {...initialState, ...action.search}
        default:
            return initialState
    }
}