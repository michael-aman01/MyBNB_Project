import { useEffect} from "react";
import { useDispatch } from "react-redux";
import { useSelector } from "react-redux";
import {fetchListings, getListings} from "../../store/data"
import ListingsIndexItem from "../ListingsIndexItem";
import "./listingsIndex.css"
import { fetchRerservations } from "../../store/reservation";

export default function ListingsIndex(){
   
    const sessionUser = useSelector(state => state.session.user);
    const dispatch = useDispatch()

    const listings = useSelector(getListings());
    console.log(listings)
  
    useEffect(( ) =>{

        if(sessionUser){
            dispatch(fetchListings())
            dispatch(fetchRerservations())
        }
        
    },[dispatch,sessionUser])
    console.log(listings)
    if(!listings){
        return null
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
