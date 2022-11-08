import "./ShowPage.css"
import {fetchListings, getListing} from "../../store/data";
import {useSelector, useDispatch } from "react-redux";
import { useParams } from "react-router-dom";
import X from "../../assets/iconmonstr-x-mark-1.svg"
import { useEffect } from "react";
import ReservationForm from "../ReservationForm";
import { fetchRerservations } from "../../store/reservation";
import DateSelector from "../../components/DateSelector"
import React, { useState } from 'react';
import Calendar from 'react-calendar';

export default function ShowPage(){
    const dispatch = useDispatch()
    const {id} = useParams()
    const [windowSize, setWindowSize] = useState(document.documentElement.clientWidth)
    const listing = useSelector(getListing(id))
    const [value, onChange] = useState(new Date());
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
     
        if(window.innerWidth >= windowSize){
     
            contentContainer.style.marginRight = "20%"
            contentContainer.style.marginLeft = "20%"
            contentContainer.style.gridTemplateColumns = "repeat(4,1fr)"
            contentContainer.style.gridTemplateRows = "repeat(2,1fr)"
    
         
            //max
        }else{
            contentContainer.style.marginRight = "5%"
            contentContainer.style.marginLeft = "5%"
            contentContainer.style.gridTemplateColumns = "repeat(4,25%)"
            contentContainer.style.gridTemplateRows = "repeat(2,80%)"
      
        }
    })
    if(!listing){
        return null
    }else{
  
            return (
      <>
                <div id="root-container">        
                <div id="content">
                    <div id="header-container">
                        <p className="header-title">header</p>
                    </div>
                    <div class="images-grid">
                            <img  src={listing.image_urls[0]} id="main-image"></img>
                            <img src={listing.image_urls[0]}></img>
                            <img src={listing.image_urls[0]} ></img>
                            <img src={listing.image_urls[0]}></img>
                            <img src={listing.image_urls[0]} ></img>
                    </div>
                    <div id="mid-container">
                    <div id="details-container">
                              <div className="header-title">details</div>
                              <br></br>
                              <div className="details-items">
                                <p>{listing.max_guests} guests {listing.num_bedrooms} bedrooms {listing.num_beds} beds {listing.num_bedrooms} bathrooms</p>    
                              </div>
                    </div>

                    </div>
                        
                
                    <div className="description-container">
                    {listing.description.split("").slice(0,250).join("") + "..."}
                                    <br></br>
                                    <br></br>
                                 
                                        <div className="modal-hide" id="description-modal">
                                            <div className="modal-background">
                                           
                                                <div className="modal-content">
                                                <span onClick={closeModal}><img  className="modal-closing-x" src={X}></img></span>
                                                    {listing.description}
                                                </div>
                                            </div>
                               
                                         
                                    </div>
                                    
                            </div>
                           
                            <div className="description-container">
                            <span id="modal-button" onClick={showModal}>Show more {">"}</span>
                            </div>
                            <div>               
                            </div>
                            <div>
                            <div className="border-line"></div>
                        <div id="show-calendar" className="description-container">
                            <p className="header-title">
                                Select checkout date
                                <br></br>
                                <span className="small-print">add your travel dates for exact pricing</span>
                                </p>
                    
                 
                        </div>
         
                      <div id="calendar-container">
                        
                        <DateSelector />
                      </div>
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

    

