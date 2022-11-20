class AddColToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :coordinates, :float, array: true, default: []
  end
end
