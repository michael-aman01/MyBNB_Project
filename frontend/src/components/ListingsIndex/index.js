import { useEffect} from "react";

import { useDispatch } from "react-redux";
import { useSelector } from "react-redux";

import ListingsIndexItem from "../ListingsIndexItem";

import "./listingsIndex.css"

export default function ListingsIndex(){
   
    const sessionUser = useSelector(state => state.session.user);
    const dispatch = useDispatch()

    const listings = useSelector(getListings());
    console.log(listings)
  
    useEffect(( ) =>{

        if(sessionUser){
            dispatch(fetchListings())
         
        }
    },[dispatch])
    console.log(listings)
    if(!listings){
        return null
    }else{
        return (
            <>


            <div id="listings-container">
                {listings.map(listing =>  <ListingsIndexItem listing={listing} ></ListingsIndexItem>)}
            </div>

            </>
        )
    }



}
