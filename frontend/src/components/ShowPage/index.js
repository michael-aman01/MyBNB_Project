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
      <>
                <div id="root-container">
                    <div  id="l-wing">left</div>
            
                    <div id="content">
                 
                    <div id="top">
                        <div id="header-container">
                            <p id="header-title">Explore 7-Acre Estate with Private Vineyard & Pool</p>
                            <p> # reviews</p>
                        </div>
                        <div id="images-container">
                            <div>
                                <img id="main-image" src={listing.image_urls[0]}></img>
                            </div>
                            <div id="small-images">
                                <div ><img  className="small-image" src={listing.image_urls[0]}></img></div>
                                <div ><img  className="small-image" src={listing.image_urls[0]}></img></div>
                            </div>
                            <div id="small-images">
                                <div ><img  className="small-image" src={listing.image_urls[0]}></img></div>
                                <div ><img  className="small-image" src={listing.image_urls[0]}></img></div>
                            </div>
                        </div>
                    </div>
                    </div>
          
                    </div>
                
               </>
            )
        }
    }


    

