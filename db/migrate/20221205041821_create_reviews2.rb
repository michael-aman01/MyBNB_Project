class CreateReviews2 < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :cleanliness, null: false
      t.integer :accuracy, null: false
      t.integer :communication, null: false
      t.integer :location, null: false
      t.integer :check_in, null: false
      t.text :text, null: false
      t.references :listing, foreign_key: true 
      t.timestamps
    end
  
  end
end
