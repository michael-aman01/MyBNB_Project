class Api::ListingsController < ApplicationController
    wrap_parameters include: Listing.attribute_names + [:photo]
    def index
        @listings = Listing.all
        if(@listings)
            data = {}
            @listings.map do |listing|
                data[listing.id] = {
                    id: listing.id,
                    size: listing.size,
                    photo_urls: listing.photo_urls,
                    location_desc: listing.location_desc,
                    property_type: listing.property_type,
                    space_type: listing.space_type,
                    user_id: listing.user_id,
                    coordinates: {position: {lat: listing.coordinates[0], lng: listing.coordinates[1]}, label: {color: "red", label: listing.sub_title}},
                    street_address: listing.street_address,
                    city: listing.city,
                    zip_code: listing.zip_code,
                    state: listing.state,
                    country: listing.country,
                    listing_type: listing.listing_type,
                    min_guests: listing.min_guests,
                    price: listing.price,
                    cleaning_fee: listing.cleaning_fee,
                    description: listing.description,
                    num_bedrooms: listing.num_bedrooms,
                #    num_beds: listing.num_beds,
                   num_baths: listing.num_baths,
                   image_urls: listing.images.map{|image| image.url},
                   reservations: listing.reservations.map{|reservation| reservation},
                   reviews: listing.reviews.map{|review| review},
                   main_title: listing.main_title,
                   sub_title: listing.sub_title,
                   service_fee:listing.service_fee,
                   amenities: listing.ammenities,
                   reviews: listing.reviews
            }
        end
            render json: data
        else
            render json: @listings.errors.full_messages
        end
    end

    def show
        @listing = Listing.find_by(id: params[:id])
        
        if @listing
            render json: {
                    id: @listing.id,
                    size: listing.size,
                    photo_urls: listing.photo_urls,
                    location_desc: listing.location_desc,
                    property_type: @listing.property_type,
                    space_type: @listing.space_type,
                    user_id: @listing.user_id,
                    street_address: @listing.street_address,
                    city: @listing.city,
                    zip_code: @listing.zip_code,
                    state: @listing.state,
                    country: @listing.country,
                    listing_type: @listing.listing_type,
                    coordinates: @listening.coordinates,
                    price: @listing.price,
                    cleaning_fee: @listing.cleaning_fee,
                    description: @listing.description,
                    num_bedrooms: @listing.num_bedrooms,
                    min_guests: listing.min_guests,
                   num_baths: @listing.num_baths,
                   reservations: @listing.reservations.map{|reservation| reservation},
                   reviews: @listing.reviews.map{|review| review},
                   main_title: @listing.main_title,
                   sub_title: @listing.sub_title,
                   service_fee: @listing.service_fee,
                   amenities: @listing.ammenities,
                   reviews: @listing.reviews
            }
        else
            render json: "NO USER"
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