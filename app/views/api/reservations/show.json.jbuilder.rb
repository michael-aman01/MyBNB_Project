@reservations.each do |reservation|
    json.set! reservation.id do 
        json.extract! reservation, :id, :start_date, :end_date, :listing_id, :user_id
    end
end