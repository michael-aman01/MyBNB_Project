class Api::ReviewsController < ApplicationController
    def create
        @review = Review.create(cleanliness: params[:cleanliness],
                                                        accuracy: params[:accuracy],
                                                        communication: params[:communication],
                                                        location: params[:location],
                                                        check_in: params[:check_in],
                                                        text: params[:text],
                                                        user_id: params[:user_id],
                                                        listing_id: params[:listing_id],
                                                        text: params[:text]
                                                        )
        if @review && @review.save
            render json: @review
        else  
            render json:  "ERROR CREATING REVIEW"
        end
    end


    def update
        @review = Review.find_by(id: params[:id])
       
        if @review && @review.update(cleanliness: params[:cleanliness], accuracy: params[:accuracy],
                                                                            communication: params[:communication],
                                                                            location: params[:location],
                                                                            check_in: params[:check_in],
                                                                            text: params[:text],
                                                                            user_id: params[:user_id],
                                                                            listing_id: params[:listing_id],
                                                                            text: params[:text])
            render json: @review
        else
            render json: "ERROR"
        end
    end

    def destroy
        @review =  Review.find_by(id: params[:id])
        if @review && @review.destroy
            render json: {}
        else
            render json: "ERROR: REVIEW NOT DELETED"
        end
    end
    
end
