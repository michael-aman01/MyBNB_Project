import "./ShowPage.css"
import {fetchListings, getListing} from "../../store/data";
import {useSelector, useDispatch } from "react-redux";
import { useParams } from "react-router-dom";
import X from "../../assets/iconmonstr-x-mark-1.svg"
import { useEffect } from "react";
import ReservationForm from "../ReservationForm";
import { fetchRerservations } from "../../store/reservation";
import DatePicker from "../DatePicker";
export default function ShowPage(){
    const dispatch = useDispatch()
    const {id} = useParams()

    const listing = useSelector(getListing(id))
    useEffect(() => {
        if(!listing){
            dispatch(fetchListings())
        }
        dispatch(fetchRerservations(id))
    },[dispatch,id])

    const closeModal = () => {
        document.getElementById("description-modal").setAttribute("class","modal-hide")
    }
    const showModal = (e) => {
       document.getElementById("description-modal").setAttribute("class","modal-show")
    }
    if(!listing){
        return null
    }else{
  
            return (
                <DatePicker />
                // <div id="root-container">
                //     <div  id="l-wing">left</div>
            
                //     <div id="content">
                 
                //     <div id="top">
                //         <div id="header-container">
                //             <p id="header-title">Title</p>
                //             <p> # reviews</p>
                //         </div>
                //         <div id="images-container">Images</div>
                //     </div>
                //    <div id="mid">
                //    <div id="details-box">
   
                //             <div id="host-details-container">
                //                 <p id="details-title">details</p>

                //                 <div id="details-items-container">
                //                     <p className="details-item">{listing.max_guests} guests</p>
                //                     <p className="details-item">{listing.num_bedrooms} bedrooms</p>
                //                     <p className="details-item">{listing.num_beds} beds</p>
                //                     <p className="details-item">{listing.num_baths} baths</p>
                //                 </div>
                //             </div>
                //             <div id="spacer">spacer</div>
                //             <div id="stay-details-container">
                //                    <div id="stay-description">
                //                     {listing.description.split("").slice(0,250).join("") + "..."}
                //                     <br></br>
                //                     <br></br>
                                 
                //                         <div className="modal-hide" id="description-modal">
                //                             <div className="modal-background">
                                           
                //                                 <div className="modal-content">
                //                                 <span onClick={closeModal}><img  className="closing-x" src={X}></img></span>
                //                                     {listing.description}
                //                                 </div>
                //                             </div>
                               
                //                     </div>
                            
                //                     <span onClick={showModal}>Show more {">"}</span>
                //             </div>
                //             </div>
                //             <div id="calendar-container">calendar</div>
                //             <div id="reviews-container">reviews</div>
                  

                            
                //         </div>
                //         <div id="reservation-box">
                //                 <ReservationForm listing={listing} />
                //         </div>
                //    </div>
        
                //     </div>
          
                    
                // </div>
 
               
            )
        }
    }


    

