json.listing do

    json.extract! @listing,
    :id,
    :property_type,
    :space_type,
    :user_id,
    :street_address,
    :city,
    :zip_code,
    :state,
    :country,
    :listing_type,
    :max_guests,
    :price,
    :cleaning_fee,
    :description,
    :num_bedrooms,
    :num_beds,
    :num_baths
    
end