class Api::ReservationsController < ApplicationController

    def index
        @reservations = Reservation.where(listing_id: params[:listing_id])
        if @reservations
           data = {} 
            @reservations.each do |reservation|
                data[reservation.id] = {
                    startDate: reservation.start_date,
                    endDate: reservation.end_date,
                    adultCount: reservation.adult_count,
                    
                    userId: reservation.user_id,
                    listingId: reservation.listing_id,
                    createdAt: reservation.created_at,
                    updatedAt: reservation.updated_at
                }
            end
            render json: data
        else  
            render json: "error"
        end
    end
    
    def create
     
        @reservation = Reservation.create(reservation_params)
        if @reservation.save
            render json: @reservation
        else
            render json: "Error creating json"
        end
    end

    def update
        @reservation = Reservation.find_by(id: params[:id])
        if @reservation && @reservation.update({id: params[:id], start_date: params[:start_date], end_date: params[:end_date], listing_id: params[:listing_id], adult_count: params[:adult_count], children_count: params[:children_count], pet_count: params[:pet_count], infant_count: params[:infant_count]})
            render json: @reservation
        else  
            render json: "update failed"
        end
    end




    def destroy
        @reservation = Reservation.find_by(id: params[:id])
        if @reservation
            @reservation.destroy
            render json: "successfully destroyed reservation"
        else
            render json: "issue destroying reservaton"
        end
    end

    private
    def reservation_params
        params.require(:reservation).permit(:id, :user_id, :listing_id, :start_date, :end_date, :adult_count, :children_count, :pet_count, :infant_count)
    end
end