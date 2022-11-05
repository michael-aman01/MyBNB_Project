import "./ReservationForm.css"
export default function ReservationForm({listing}){
    return (
<div id="reservation-widget">
<div id="reservation-header-container">
    <p>${listing.price} night</p>
    <p>reviews</p>
</div>
<div id="reservation-selection-container">dates</div>
<br></br>
<div id="reservation-button-container">
    reserve
</div>
<br></br>
<p>you wont be charged yet</p>
<br></br>

<div id="reservation-fee-container">fees</div>
<div id="reservation-total-container">total-price</div>
</div>
    )
}
