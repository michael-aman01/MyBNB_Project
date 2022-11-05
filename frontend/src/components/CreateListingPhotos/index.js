import { getActiveForm, getUser } from "../../store/session"
import { useSelector } from "react-redux"
import { useHistory } from "react-router-dom";
import "./CreateListingPhotos.css"
import { useEffect, useState } from "react"
import ListingVideo from "../../assets/listing_video.webm"


export default function CreateListingPhotos(){
    const history = useHistory()
    const currentUser = useSelector(getUser)
    const activeForm = useSelector(getActiveForm())[0]
   

    
    const [photo, setPhoto] = useState("")

    const handleFile = (e) => {
        e.preventDefault();
        let file = e.target.files[0]
        if (file) {
            const fileReader = new FileReader();
            fileReader.readAsDataURL(file);
            fileReader.onload = () => {
              setPhoto(file);

              if(activeForm["photos"].length >= 5){
                alert("only five images")
                
              }else{
                activeForm["photos"].push(file)
              }
            };
          }
    }
    useEffect(() => {
        const video = document.getElementById("video")
        video.play()
    },[])

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

    if(!currentUser){
        history.push("/")
    }


    return (
        <div id="upload-container">

            <div id="video-container">
                <div id="video-overlay">
                    Next, let's add some photos of your place
                </div>
                 <video loop="true" autoplay="true"muted="muted" src={ListingVideo}  id="video" ></video>
         </div>
       

            <div id="submit-container">
                <div id="submit-form">
                    
                    <form onSubmit={handleSubmit}>
                        <label>Upload from your device
                        <input type="file" id="file-input" onChange={handleFile} />
                        </label>
                    </form>
                </div>
                <div id="bottom-nav">
                    <div id="back">Back</div>
                    <div id="next-container">
                       <button id="next-button">Next</button> 
                    </div>
                </div>
            </div>
       
        </div>
    )
}