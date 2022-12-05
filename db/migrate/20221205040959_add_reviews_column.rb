class AddReviewsColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :reviews, :json, array: true, default: [], null: true
  end
end
