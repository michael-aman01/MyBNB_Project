import { useEffect, useState } from "react";
import { fetchImages, fetchListings, getListings } from "../../store/data";
import { useDispatch } from "react-redux";
import { useSelector } from "react-redux";
import { getImages } from "../../store/data";
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
          
                {listings.map(listing =>     <ListingsIndexItem listing={listing} ></ListingsIndexItem> )}
            </div>
            </>
        )
    }



}

{/* <div>
<ul className="listing-item">
    <li>image</li>
   <li>{listings[0].street_address}</li>
   <li>{listings[0].city}, {listings[0].state} </li>
    </ul>
</div> */}
// city
// : 
// "San Rafael"
// cleaning_fee
// : 
// 375
// country
// : 
// "USA"
// created_at
// : 
// "2022-11-01T10:19:38.138Z"
// description
// : 
// "About this space\nReverse pandemic blues at this retreat charged 4 bedroom haven with an authentic Finnish sauna, canal-front jacuzzi consciousness, paddleboards, a tandem kayak, replete comfy zones to lazily exchange conversation.\nThe tranquility of the canal will replace all Debbie downer thoughts with a symphony of luminous relaxation, bound to bedazzle wary minds and hearts.\nThe space\nTastefully furnished on the inside, this villa features 4 bedrooms with king or queen size beds, 2.5 bathrooms, two tuned grand pianos for dueling it out, and within a few minute paddle to the bay. After a few hours here you’ll forget about any invisible enemy that has destroyed the basic hug! Great for team building and corporate or family retreats! No parties allowed. Long-term rental an option.\nGuest access\nThe entire property , entire first floor, entire front courtyard, backyard with pool and spa and BBQ area, deck area where boat is docked. Paddleboards and Kayak accessible. Boat is not included in rental.\nOther things to note\nThe host can arrange additional cleaning service for guests staying long-term (5 days or more).\n\nThe 2.5 bathrooms included three showers and one soaking tub and half bath\n\nIf rules are not honored, guests will be asked to leave and will not receive a refund from the host. It is significant to note that due to some bad apples in the past, we are enforcing rules with greater scrutiny, and ask for honesty and transparency in an effort to help honor and preserve the tranquility of the community, especially with homes across the canal that absorb amplified sound that travels across the canal. Thank you for respecting our community!\n\nPARKING : 2-4 parking spots available in driveway (depending on your advanced Tetris skills ). No more than 3\ncars can park on the street. There are 24 hour parking spots on the street if you can find parking or you may park over night in public parking in the adjacent park parking lot.\nNo ragers allowed.\nFamily gathering or smaller civilized gatherings are allowed pending a conversation and clarity on safety guidelines."
// id
// : 
// 1
// listing_type
// : 
// "apartment"
// max_guests
// : 
// 12
// num_baths
// : 
// 2.5
// num_bedrooms
// : 
// 4
// num_beds
// : 
// 4
// price
// : 
// 998
// state
// : 
// "California"
// street_address
// : 
// "123 sesame st."
// updated_at
// : 
// "2022-11-01T10:19:38.138Z"
// user_id
// : 
// 1
// zip_code
// : 
// "94901"