
import "./ProfilePage.css"
import { useEffect } from "react"
import { useDispatch, useSelector } from "react-redux"
import { fetchListings } from "../../store/data"
import ReservationIndexPage from "../ReservationsIndex"
import { fetchUser, getCurrentUser, getUser } from "../../store/user"
import { UserReducer } from "../../store/session"
import { compose } from "redux"
import { cancelReservation } from "../../store/reservation"

export default function ProfilePage(){
    const dispatch = useDispatch()
    const currentUser = useSelector(getUser)
    const user = useSelector(getCurrentUser)
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
    console.log(listings)
    console.log(images)
    console.log(reservations)
    return (
        <>
        <div id="main-container">
            <div>
                <ul>
                    {reservations.map((res, i) =>
              <li>
                <div>{res.start_date}</div>
                <div>{listings[i].city}</div>
                <form onSubmit={handleSubmit} id={i}>
                    <button>cancel</button>
                </form>

                <br></br>
                </li>
 
                    )}
                </ul>
            </div>
        </div>
</>
    )
}

