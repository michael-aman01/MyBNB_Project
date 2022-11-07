class Api::ReservationsController < ApplicationController

    def index
        @reservations = Reservation.where(listing_id: params[:listing_id])
        if @reservations
           data = {} 
            @reservations.each do |reservation|
                data[reservation.id] = {
                    startDate: reservation.start_date,
                    endDate: reservation.end_date,
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
        params.require(:reservation).permit(:user_id, :listing_id, :start_date, :end_date)
    end
end