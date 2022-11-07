class Api::ReservationsController < ApplicationController
    def create
        @reservation = Reservation.create(reservation_params)
        if @reservation.save
            render json: "Successfully created reservation"
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