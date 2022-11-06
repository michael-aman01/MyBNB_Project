class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references  :users, foreign_key: true, null: false
      t.references  :listings, foreign_key: true, null: false
      t.string :start_date, null: false, null: false
      t.string :end_data, null: false, null: false
      t.timestamps
    end
  end
end
