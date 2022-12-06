import './ReviewItem.css'

export default function ReviewItem({currentListing, reviewers, currentUser}){

    const handleUpdate = (e) => {
        e.preventDefault()
    }

    const handleDelete = (e) => {
        e.preventDefault()
    }
    if(currentListing && reviewers){
    return (
   
                                
   
    <>
   
        {currentListing.reviews.slice(Math.floor(currentListing.reviews.length/2)).map((review,i) => 
        <>
             <div className="reviewer-info">
            {reviewers[0] !== null ? 
                <div>
                <p className='reviewer-name'>{reviewers[i + Math.floor(currentListing.reviews.length/2)]}</p>
                </div>
                : null
                }
                {reviewers[i] === currentUser.firstName ? 
                        <div className='review-update-options'>
                                  <p id="update-review"className='review-option' onClick={handleUpdate}>update</p>
                                            
                                  <p id="delete-review" className='review-option' oncClick={handleDelete}>delete</p>
                               </div>
                               : null
                }
            </div>
                <br></br>
            <div className="review-text" >
                    <p>{review.text}</p> 
            </div>
     </>
          
                )}
            </>

    )}
}
            
            
        
