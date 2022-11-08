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
    validates :host_rating, :check_in, :description, :accuracy, presence: true
    validates :host_rating, :check_in, :accuracy, numericality: {in: 1..5}


    belongs_to :user
   
    belongs_to :listing
    
end
