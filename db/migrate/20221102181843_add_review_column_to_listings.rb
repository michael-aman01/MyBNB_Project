class AddReviewColumnToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :rating, :float, null: true
  end
end
