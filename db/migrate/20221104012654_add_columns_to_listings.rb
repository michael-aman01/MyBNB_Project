class AddColumnsToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :property_type, :string
    add_column :listings, :space_type, :string
  end
end
