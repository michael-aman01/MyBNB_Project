class RemoveColListings6 < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :size, :float, null: false
  end
end
