
import "./ProfilePage.css"
import ReservationIndexPage from "../ReservationsIndex"

export default function ProfilePage(){

    return (
        <>
        <div id="profile-header-container">
               <p id="profile-header-title" >Trips</p>
        </div>
        <div id="profile-container">
 
        <ReservationIndexPage />
        </div>
</>
    )
}

