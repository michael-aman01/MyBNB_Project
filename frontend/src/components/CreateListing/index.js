import { getUser } from "../../store/session"
import { useSelector } from "react-redux"
import csrfFetch from "../../store/csrf"

import { useState } from "react"
export default function CreateListing(){
    const currentUser = useSelector(getUser)

    const [photo, setPhoto] = useState("")

    const handleFile = (e) => {
        e.preventDefault();
        setPhoto(e.target.files[0])
    }

    const handleSubmit = async (e) => {
        e.preventDefault()
        if(photo){
            console.log(photo)
            const form = new FormData();
            form.append("title",photo.name)
            form.append("photo",photo)
            const res = await fetch("/api/listings",{
                method: "POST",
                headers: {"X-CSRF-Token" : sessionStorage.getItem("X-CSRF-Token")},
                body: form
            })
            if(res.ok){
                const data = await res.json()
                console.log(data)
            }
    
        }

    }

    
    return (
        <div id="upload-container">
            <form onSubmit={handleSubmit}>
                <input type="file" id="file-input" onChange={handleFile}/>
                <button>submit</button>
            </form>

        </div>
    )
}