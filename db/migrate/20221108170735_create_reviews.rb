class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :host_rating, null: false
      t.integer :check_in,  null: false
      t.text :description, :text, null: false
      t.integer :accuracy, null: false
      t.timestamps
    end
  end
end
