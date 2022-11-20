class AddColumnListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :photo_urls, :text, array: true, default: []
  end
end
