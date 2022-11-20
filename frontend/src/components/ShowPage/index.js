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
import reviewStar from "../../assets/Five_Pointed_Star_Solid.svg"
import bayviewIcon from "../../assets/ammenities/bayview.svg"
import Map from "../Map";
export default function ShowPage(){

    const dispatch = useDispatch()
    const {id} = useParams()
    const [windowSize, setWindowSize] = useState(window.innerHeight)
    const listing = useSelector(getListing(id))
    const [value, onChange] = useState(1);
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
    // useEffect(()=>{
    //     window.addEventListener("resize",() =>{
    //         const contentContainer = document.getElementById("content")
    //         const detailsContainer = document.getElementById("details-container")
    //         if(window.screen.availWidth === window.outerWidth){
         
    
    
    //             contentContainer.style.marginRight = "20%"
    //             contentContainer.style.marginLeft = "20%"
    //             contentContainer.style.gridTemplateColumns = "repeat(4,1fr)"
    //             contentContainer.style.gridTemplateRows = "repeat(2,1fr)"
   
             
    //             //max
    //         }else{
    //             console.log(contentContainer.style.marginRight)
    //             contentContainer.style.marginRight = "5%"
    //             contentContainer.style.marginLeft = "5%"
    //             contentContainer.style.gridTemplateColumns = "repeat(4,25%)"
    //             contentContainer.style.gridTemplateRows = "repeat(2,80%)"
              
    //         }    })
    // },[windowSize])
    // const overlay = document.getElementById("overlay")

    // if(window.screen.availWidth === window.outerWidth){
    //     overlay.style.marginTop = "30%"
    // }else{
    //     overlay.style.marginTop = "20%"
    // }

    if(!listing){
        return null
    }else{

            return (
      <>
          <div>
        <div className="grid-container">
        <div  id="show-title-container">
        <p className="header-title">{listing.main_title}</p>
        <br></br>
        <p><img id="show-title-star" src={reviewStar}></img> 4.3  - 100 reviews - {listing.city}.{listing.state} </p>

        </div>
        <div id="show-image-container">
         <div class="images-grid">
                            <img  src={listing.photo_urls[1]} id="main-image"></img>
                            <img src={listing.photo_urls[2]} className="side-image"></img>
                            <img src={listing.photo_urls[3]} className="side-image"></img>
                            <img src={listing.photo_urls[4]} className="side-image"></img>
                            <img src={listing.photo_urls[5]} className="side-image"></img>
            </div>
        </div>

        <div id="show-details-container">
        <div id="description-title">{listing.sub_title}</div>
                              <br></br>
                              <div className="details-items">
                                <p>{listing.min_guests} guests • {listing.num_bedrooms} bedrooms •  {listing.num_baths} bathrooms</p>    
                    </div>
                    <br></br>
                    <br></br>
                    <div id="show-description-container">
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
                            <br></br>
                            <div id="show-description-container">
                            <span id="modal-button" onClick={showModal}>Show more {">"}</span>
                            
                            </div>
                            <br></br>
                            <br></br>
                            <br></br>
                            <br></br>

                            <div>               
                            </div>
                            <div>
                    </div>
                 <div className="border-line"></div>
                <div id="aircover-container">
                        <img id="aircover-banner" src="https://a0.muscache.com/im/pictures/54e427bb-9cb7-4a81-94cf-78f19156faad.jpg"></img>
                        <br></br>
                        Every booking includes free protection from Host cancellations, listing inaccuracies, and other issues like trouble checking in.
                        <br></br>
                        <div className="modal-hide" id="description-modal">
                                            <div className="modal-background">
                                           
                                                <div className="modal-content">
                                                <span onClick={closeModal}><img  className="modal-closing-x" src={X}></img></span>
                                                    {listing.description}
                                                </div>
                                            </div>
                               
                                         
                                    </div>
                                    
                 
                           
                            <div id="show-description-container">
                            <span id="modal-button" onClick={showModal}>Learn more {">"}</span>
                            </div>
                    </div>
                    <div className="border-line"></div> 
            
                            <div id="show-ammenities-container">
                    <h1>What this place offers </h1>
                    <br></br>
                       <div id="ammenities">
                 
                        <div>
                        {listing.amenities.slice(0,listing.amenities.length/2+1).map(l => 
                        <>
          
                        <p><img width="20px" height="20px" src={bayviewIcon}></img> {l}</p>
                   
                        </>

                        )}
                        </div>
                        <div>
                        {listing.amenities.slice(listing.amenities.length/2+1).map(l =>
                                                    <p><img width="20px" height="20px" src={bayviewIcon}></img> {l}</p>
                            )}
                        </div>
              
                   
                       </div>
                 </div>
                 <br></br>
                 <br></br>
                 <br></br>
                 <br></br>
                 <div className="border-line"></div>
        
        </div>

            <DateSelector listing={listing} value={value}/>
            <div id="show-map-container">
                    <Map listing={listing}></Map>
            </div>
      </div>

     </div>

                {/* <div id="root-container">        
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
                    <div id="bottom-half">

               
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
                        <DateSelector listing={listing}/>
                      </div>
                    </div>
                    </div> 
                    </div>
                    <div id="right-container">test</div>
                    </div> */}

            
                
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

    

