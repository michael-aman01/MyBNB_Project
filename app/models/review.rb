# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  host_rating :integer          not null
#  check_in    :integer          not null
#  description :text             not null
#  accuracy    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#  listing_id  :bigint
#
class Review < ApplicationRecord
    validates :cleanliness, :accuracy, :communication, :location, :check_in, :text, :user_id, :listing_id, presence: true
    
    belongs_to :user

    belongs_to :listing
end
