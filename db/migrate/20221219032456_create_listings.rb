class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.references :user, foreign_key: true, null: false, index: true
      t.string "city", null: false
      t.string "state", null: false
      t.string "country", null: false
      t.string "listing_type", null: false
      t.float "price", null: false
      t.float "cleaning_fee", null: false
      t.text "description", null: false
      t.integer "num_bedrooms", null: false
      t.float "num_baths", null: false
      t.float "rating"
      t.integer "zip_code"
      t.string "street_address"
      t.bigint "image_id"
      t.string "property_type"
      t.string "space_type"
      t.string "main_title", null: false
      t.string "sub_title", null: false
      t.text "ammenities", default: [], array: true
      t.float "service_fee"
      t.integer "min_guests"
      t.text "location_desc"
      t.float "size", null: false
      t.text "photo_urls", default: [], array: true
      t.float "coordinates", default: [], array: true
      t.timestamps
    end
  end
end
