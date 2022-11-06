class CreateReservations3 < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references  :user, foreign_key: true, null: false
      t.references  :listing, foreign_key: true, null: false
      t.string :start_date, null: false, null: false
      t.string :end_date, null: false, null: false
      t.timestamps
    end
  end
end
