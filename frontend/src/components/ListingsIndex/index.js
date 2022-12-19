import { useEffect} from "react";
import { useDispatch } from "react-redux";
import { useSelector } from "react-redux";
import {fetchListings, getListings} from "../../store/data"
import ListingsIndexItem from "../ListingsIndexItem";
import "./listingsIndex.css"
import { fetchRerservations } from "../../store/reservation";
import { useState } from "react";
import LoadingSpinner from "../LoadingSpinner";

export default function ListingsIndex(){
   
    const sessionUser = useSelector(state => state.session.user);
    const dispatch = useDispatch()

    const listings = useSelector(getListings());
   const [loading, setLoading] = useState()
  
    useEffect(( ) =>{
        if(sessionUser){
            dispatch(fetchListings())
            dispatch(fetchRerservations())
            setLoading(listings)
        }
    },[dispatch,sessionUser])


    if(!listings){
        return (
            <LoadingSpinner></LoadingSpinner>
        )
    }else{
        return (
            <>

            <div id="listings-container">
                {listings.map((listing,i) =>  <ListingsIndexItem listing={listing} key={i}></ListingsIndexItem>)}
            </div>


            </>
        )
    }



}
