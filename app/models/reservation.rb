# == Schema Information
#
# Table name: reservations
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  listing_id :bigint           not null
#  start_date :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  end_date   :string           not null
#
class Reservation < ApplicationRecord
    validates :start_date, :end_date, :user_id, :listing_id, presence: true
    belongs_to :listing

    belongs_to :user
end
