import { useEffect } from "react"
import { useSelector } from "react-redux"
import { useDispatch } from "react-redux"
import { getUser } from "../../store/user"
import { getListings } from "../../store/data"
import { useParams } from "react-router-dom"
import { fetchListings } from "../../store/data"
import csrfFetch from "../../store/csrf"
import ReservationIndexItem from "../ReservationIndexItem"
import { getReservations } from "../../store/reservation"

export default function ReservationIndexPage(){
    const dispatch = useDispatch()
    const currentUser = useSelector(getUser)
    const {user_id} = useParams()
   
    if(currentUser.id.toString() !== user_id){
        return null
    }
    return(
        <>
        <div>
            <h1>Your trips:</h1>
            <br></br>
        </div>

     
</>
    )
}
