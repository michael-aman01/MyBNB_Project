import "./ShowPage.css"
import {fetchListings, getListing} from "../../store/data";
import {useSelector, useDispatch } from "react-redux";
import { useParams } from "react-router-dom";
import X from "../../assets/iconmonstr-x-mark-1.svg"
import { useEffect } from "react";
import ReservationForm from "../ReservationForm";
import { fetchRerservations } from "../../store/reservation";
import DatePicker from "../DatePicker";
import pic from "../../assets/image_12.jpg"
import { useState } from "react";


export default function ShowPage(){
    const dispatch = useDispatch()
    const {id} = useParams()
    const [windowSize, setWindowSize] = useState(window.innerWidth)
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


    window.addEventListener("resize",() =>{
        const contentContainer = document.getElementById("content")
        const detailsContainer = document.getElementById("details-container")
     
        if(window.innerWidth > windowSize){
     
            contentContainer.style.marginRight = "20%"
            contentContainer.style.marginLeft = "20%"
            contentContainer.style.gridTemplateColumns = "repeat(4,1fr)"
            contentContainer.style.gridTemplateRows = "repeat(2,1fr)"
            detailsContainer.style.marginTop = "250px"
         
            //max
        }else{
            contentContainer.style.marginRight = "5%"
            contentContainer.style.marginLeft = "5%"
            contentContainer.style.gridTemplateColumns = "repeat(4,25%)"
            contentContainer.style.gridTemplateRows = "repeat(2,80%)"
            detailsContainer.style.marginTop = "200px"
        }
    })
    if(!listing){
        return null
    }else{
  
            return (
      <>
                <div id="root-container">        
                <div id="content">
                    <div class="header-container">
                        <p className="header-title">header</p>
                    </div>
                    <div class="images-grid">
                            <img  src={listing.image_urls[0]} id="main-image"></img>
                            <img src={listing.image_urls[0]}></img>
                            <img src={listing.image_urls[0]} ></img>
                            <img src={listing.image_urls[0]}></img>
                            <img src={listing.image_urls[0]} ></img>
                    </div>
                    <div id="details-container">
                              <p className="header-title">details</p>
                    </div>
           
              
              
                    </div> 
 
                    </div>
                  
                
               </>
            )
        }
    }


    /*
    .images-grid on minimized:
    grid-template-columns: repeat(4,25%);
    grid-template-rows: repeat(2,75%);
   
    content :
    margin-right 5%
    margin-left 5%

        .images-grid on open
    grid-template-columns: repeat(4,2fr);
    grid-template-rows: repeat(2,2fr);

    content:
        margin-left: 20%;
    margin-right: 20%;
    */

    

