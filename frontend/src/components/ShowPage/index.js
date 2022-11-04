import "./ShowPage.css"
import {fetchListing, fetchListings, getListing} from "../../store/data";
import {useSelector, useDispatch } from "react-redux";
import { Route, Switch, useParams } from "react-router-dom";

import { useEffect } from "react";

export default function ShowPage(){
    const dispatch = useDispatch()
    const {id} = useParams()
    const listing = useSelector(getListing(id))
    useEffect(() => {
        dispatch(fetchListing(id))

    },[dispatch,id])
    if(!listing){
        return null
    }else{
  
            return (
                <div>
                    <h1>{listing.id}</h1>
                    Show page
                </div>
            )
        }
    }


    

