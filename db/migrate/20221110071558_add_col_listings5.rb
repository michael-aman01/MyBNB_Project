class AddColListings5 < ActiveRecord::Migration[7.0]
  def change
    remove_column :listings, :num_beds
  end
end
