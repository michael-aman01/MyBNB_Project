import "./ReservationIndexPage.css"

import { useEffect } from "react"
import { useDispatch, useSelector } from "react-redux"
import { fetchListings } from "../../store/data"
import { fetchUser, getCurrentUser, getUser } from "../../store/user"
import { UserReducer } from "../../store/session"
import { compose } from "redux"
import { cancelReservation } from "../../store/reservation"

export default function ReservationIndexPage(){
    const months = {"01":"Jan","02":"Feb","03":"Mar","04":"Apr","05":"May","06":"Jun","07":"Jul","08":"Aug","09":"Sept","10":"Oct","11":"Nov","12":"Dec"}

    const dispatch = useDispatch()
    const currentUser = useSelector(getUser)
    const user = useSelector(getCurrentUser)
    const dummyUrl = "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/fzl85fhux1orkyludbkdqu3dfutf?response-content-disposition=inline%3B%20filename%3D%22image%22%3B%20filename%2A%3DUTF-8%27%27image&response-content-type=image%2Fjpeg&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAXI3R5LCTHMP6KVD6%2F20221110%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221110T184337Z&X-Amz-Expires=300&X-Amz-SignedHeaders=host&X-Amz-Signature=0d4c5150d29da4901ba1e08d1933dfa4609041af947cc41590a27eec355042ca"
    useEffect(() => {
        dispatch(fetchUser(currentUser.id))
    },[dispatch])
    const handleSubmit = (e) => {
        e.preventDefault()
        const selected = reservations[e.target.id]
        dispatch(cancelReservation(selected))
        alert("canceled")
        dispatch(fetchUser(currentUser.id))
    }
    if(!user || !user.reservations){
        return null
    }
    const reservations = user.reservations
    const images = user.reservation_images
    const listings = user.reservations_listings
    if(reservations.length === 0){
        return (
        <div id="reservation-containers">
            NO reservations
        </div>
        )
    }
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
                                <div>
                                <p>{months[res.start_date.split("/")[0]]}  {res.start_date.split("/")[1]} {res.start_date.split("/")[2]}</p>
                                <p> - </p>
                                <p>{months[res.end_date.split("/")[0]]}  {res.end_date.split("/")[1]} {res.end_date.split("/")[2]}</p>
                                </div>
                                <div className="alter-buttons">
                                <form className="" onSubmit={handleSubmit} id={i}>
                    <div className="cancel-container">
                    <button className="alter-button">Cancel trip</button>
                    </div>
                    <br></br>
            
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
                        <div class="trip-image">
                            <img  class="trip-image" src={dummyUrl}></img>
                        </div>
                    </div>
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



