import "./ReservationIndexPage.css"
import xMark from "../../assets/iconmonstr-x-mark-1.svg"
import { useEffect } from "react"
import { useDispatch, useSelector } from "react-redux"
import { fetchListings } from "../../store/data"
import { fetchUser, getCurrentUser, getUser } from "../../store/user"
import ReservationConfirmationForm from '../ReservationConfirmationForm'
import { cancelReservation } from "../../store/reservation"
import { useState } from "react"
import { useHistory } from "react-router-dom"


export default function ReservationIndexPage(){
    const months = {"01":"Jan","02":"Feb","03":"Mar","04":"Apr","05":"May","06":"Jun","07":"Jul","08":"Aug","09":"Sept","10":"Oct","11":"Nov","12":"Dec"}
    const dispatch = useDispatch()
    const currentUser = useSelector(getUser)
    const user = useSelector(getCurrentUser)
    const [currentReservation, setCurrentReservation] = useState()
    const [tag, setTag] = useState()



    useEffect(() => {
        dispatch(fetchUser(currentUser.id))
    },[dispatch])

    const handleCancel = (e) => {
        e.preventDefault()
        const selected = reservations[e.target.id]
        dispatch(cancelReservation(selected))
        alert("canceled")
        dispatch(fetchUser(currentUser.id))
    }
    const handleShowPage = listing => {
    
        history.push(`/listings/${listing.id}`)
    }
    const handleUpdate = e => {
        e.preventDefault()
        const selected = reservations[e.target.id]
    
        setCurrentReservation(selected)
      
        document.getElementById("reservation-confirmation-overlay").style.display = "block"
        
      
    }
    const history = useHistory()

    if(!user || !user.reservations){
        return null
    }
    const reservations = user.reservations
    const images = user.reservations_listings.map(r => r.photo_urls)
    const listings = user.reservations_listings
    if(reservations.length === 0){
        return (
        <div id="reservation-containers"> 
            <p>No trips booked yet...</p>
            <p>start searching: </p>
            <button id="profileh-search-button" onClick={() => history.push("/listings")}>search</button>
        </div>
        )
    }else{
    return (
        
        <>


                <ul>
                    {reservations.map((res, i) =>
              <li key={i} className="trip-container">
                <div class="trip-widget-container">
                    <div id="left">
                        <div class="trip-details">
                            <p className="trip-details-large">{listings[i].city}</p>
                            <p className="trip-details-small">{listings[i].sub_title}</p>
                        </div>  
                        <div class="trip-detail-bottom">
                      
                            <div class="trip-dates">
                            <h1>Trip Dates:</h1>
                                <div>
                                <p>{`${months[res.start_date.split('-')[1]]}-${res.start_date.split('-')[2].slice(0,2)}-${res.start_date.split('-')[0]}`}</p>
                                <p> - </p>
                                <p>{`${months[res.end_date.split('-')[1]]}-${res.end_date.split('-')[2].slice(0,2)}-${res.end_date.split('-')[0]}`}</p>                                </div>
                                <div className="alter-buttons">
                                <form className="" onSubmit={handleCancel} id={i}>
                    <div className="cancel-container">
                    <button className="alter-button">Cancel trip</button>
                    </div>
                    </form>
                    <br></br>
                    <form className="" onSubmit={handleUpdate} id={i}>
                                <div>
                
                                <button  className="alter-button">Update trip</button>
                                </div>
                    </form>

                                </div>
                            </div>
                            <div class="trip-location">
                            {listings[i].city}, {listings[i].state}
                            </div>
                        </div>

                    </div>
                    <div class="rigth">
                        <div class="trip-image"  onClick={() => handleShowPage(listings[i])}>
                            <img  class="trip-image" src={images[i][1]}></img>
                        </div>
                    </div>
                </div>

                <div id="reservation-confirmation-overlay">
                    {currentReservation === undefined ? null 
                    :
                    <ReservationConfirmationForm checkIn={new Date(currentReservation.start_date)} checkOut={new Date(currentReservation.end_date)} listing={listings[i]}   adults={currentReservation.adult_count} children={currentReservation.children_count} pets={currentReservation.pet_count} infants={currentReservation.infant_count} method={"update"} reservationID={currentReservation.id}></ReservationConfirmationForm>

                    }

                </div>

         
                <br></br>
                <br></br>


                <br></br>
                <br></br>


                <br></br>
                <br></br>
                </li>
     
                    )}
                </ul>

    
</>
    
    )
}
}
