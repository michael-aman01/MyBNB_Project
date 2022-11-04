class Api::ListingsController < ApplicationController
    wrap_parameters include: Listing.attribute_names + [:photo]
    def show
        @listings = Listing.all
        if(@listings)
            render json: @listings
        else
            render json: @listings.errors.full_messages
        end
    end

    def create
        file = File.open(params[:photo])
        @listings = Listing.create!({
              id: 10030,
              property_type: "apartment",
              space_type: "shared room",
              user_id: params[:user_id],
              street_address: '123 sea.',
              city: 'San Rfael',
              zip_code: '94901',
              state: 'California',
              country: 'USA',
              listing_type: 'apartment',
              max_guests: 12,
              price: 998,
              cleaning_fee: 375,
              description: 'About this space',
              num_bedrooms: 4,
             num_beds: 4,
             num_baths: 2.5
            })
        @listings.images.attach(io: file, filename: params[:title])
        if @listings.save
            render json: "SUCCESS"
        end
      end
    


end