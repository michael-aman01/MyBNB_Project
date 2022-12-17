
import {fetchListings, getListing} from "../../store/data";
import {useSelector, useDispatch } from "react-redux";
import { useParams } from "react-router-dom";
import X from "../../assets/iconmonstr-x-mark-1.svg"
import { useEffect } from "react";
import { fetchRerservations} from "../../store/reservation";
import ReviewsIndex from "../ReviewsIndex";

import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"
import bayviewIcon from "../../assets/ammenities/bayview.svg"
import Map from "../Map";
import DateSelector from "../DateSelector";
import { useState } from "react";

export default function Test(){
    const dispatch = useDispatch()

    const listing = useSelector(getListing('519'))
    const [listings, setListings] = useState()




    useEffect(() => {
        if(!listing){
            dispatch(fetchListings())
            .then(data => {
                console.log(data)
            })
        }

    },[dispatch])


    if(!listing){
        return null
    }else{
        return (
  


        <div className="grid-container">
     
 

        
        <div id="show-map-container">
                <Map listing={listing}></Map>
        </div>

        </div>

)}}
