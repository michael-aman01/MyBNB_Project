class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.references :user, foreign_key: true, null: false, index: true
      t.string :street_address, null: false
      t.string :city, null: false
      t.string :zip_code, null: false
      t.string :state, null: false
      t.string :country, null: false
      t.string :listing_type, null: false
      t.integer :max_guests,  null: false
      t.float :price,  null: false
      t.float :cleaning_fee,  null: false
      t.text :description,  null: false
      t.integer :num_beds,  null: false
      t.integer :num_bedrooms,  null: false
      t.float :num_baths,  null: false
      t.timestamps
    end
  end
end
