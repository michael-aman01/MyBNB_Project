class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string "start_date", null: false
      t.string "end_date", null: false
      t.integer "adult_count"
      t.integer "children_count"
      t.integer "infant_count"
      t.integer "pet_count"
      t.references :listing, foreign_key: true, null: false, index: true
      t.references :user, foreign_key: true, null: false, index: true
      t.timestamps
    end
  end
end
