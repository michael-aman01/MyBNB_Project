class Api::ImagesController < ApplicationController
    def show
        @images = Image.all
        if @images
            render json: @images
        else   
            render json: @images.errors.full_messages
        end
    end


end