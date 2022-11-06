# == Schema Information
#
# Table name: reservations
#
#  id          :bigint           not null, primary key
#  users_id    :bigint           not null
#  listings_id :bigint           not null
#  start_date  :string           not null
#  end_data    :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Reservation < ApplicationRecord
    validates :start_date, :end_date, :user_id, :listing_id, presence: true
    belongs_to :listing

    belongs_to :user
end
