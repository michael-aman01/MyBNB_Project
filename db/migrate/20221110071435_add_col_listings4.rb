class AddColListings4 < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :service_fee, :float, null: true
  end
end
