# == Schema Information
#
# Table name: images
#
#  id          :bigint           not null, primary key
#  image_url   :string           not null
#  listings_id :bigint
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Image < ApplicationRecord
    validates :image_url, :user_id, :listings_id, presence: true
    belongs_to :listing,
        class_name: :listings,
        foreign_key: :image_id
        
end
