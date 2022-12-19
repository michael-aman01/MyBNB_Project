import { TailSpin } from  'react-loader-spinner'
import "./LoadingSpinner.css"

export default function LoadingSpinner(){
    return (
        <div id="loading-spinner">
<TailSpin
height="80"
width="80"
color="#FF5A5F"
ariaLabel="tail-spin-loading"
radius="1"
wrapperClass=""
visible={true}
/>
            </div>
    )
}