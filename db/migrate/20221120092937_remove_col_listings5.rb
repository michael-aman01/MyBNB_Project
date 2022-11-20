class RemoveColListings5 < ActiveRecord::Migration[7.0]
  def change
    remove_column :listings, :max_guests
    add_column :listings, :min_guests, :integer, null: true
    add_column :listings, :location_desc, :text, null: true
  end
end
