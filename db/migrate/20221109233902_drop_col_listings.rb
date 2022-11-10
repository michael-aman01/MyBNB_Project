class DropColListings < ActiveRecord::Migration[7.0]
  def change
    remove_column :listings, :title
    add_column :listings, :main_title, :string, null: false
    add_column :listings, :sub_title, :string, null: false
    add_column :listings, :ammenities, :text, array: true, default: []
  end
end
