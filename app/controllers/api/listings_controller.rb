class Api::ListingsController < ApplicationController

    def show
        @listings = Listing.all
        if(@listings)
            render json: @listings
        else
            render json: @listings.errors.full_messages
        end
    end
    end