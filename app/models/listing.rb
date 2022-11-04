# == Schema Information
#
# Table name: listings
#
#  id             :bigint           not null, primary key
#  user_id        :bigint           not null
#  city           :string           not null
#  state          :string           not null
#  country        :string           not null
#  listing_type   :string           not null
#  max_guests     :integer          not null
#  price          :float            not null
#  cleaning_fee   :float            not null
#  description    :text             not null
#  num_beds       :integer          not null
#  num_bedrooms   :integer          not null
#  num_baths      :float            not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  rating         :float
#  zip_code       :integer
#  title          :string
#  street_address :string
#  image_id       :bigint
#
class Listing < ApplicationRecord
    validates :user_id, :street_address, :city, :zip_code, :state, :country, :listing_type, :max_guests, :price,
    :cleaning_fee, :description, :num_beds, :num_bedrooms, :num_baths, presence: false
    validates :street_address, uniqueness: {scope: [:city, :zip_code]}

    has_many_attached :images
    

end
