
import "./ProfilePage.css"
import { useEffect } from "react"
import { useDispatch, useSelector } from "react-redux"
import ReservationIndexPage from "../ReservationsIndex"
import { getUser, getCurrentUser } from "../../store/user"


export default function ProfilePage(){
    const dispatch = useDispatch()
    const currentUser = useSelector(getUser)
    const user = useSelector(getCurrentUser)


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

