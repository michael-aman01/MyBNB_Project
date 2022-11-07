
import "./ProfilePage.css"
import { useEffect } from "react"
import { useDispatch, useSelector } from "react-redux"
import { fetchListings } from "../../store/data"
import ReservationIndexPage from "../ReservationsIndex"
import { fetchUser, getUser } from "../../store/user"
import { UserReducer } from "../../store/session"

export default function ProfilePage(){
    const dispatch = useDispatch()
    const currentUser = useSelector(getUser)
    useEffect(() => {
        dispatch(fetchUser(currentUser.id))
    })
    return (
        <div id="main-container">
        <ReservationIndexPage />
        </div>

    )
}

