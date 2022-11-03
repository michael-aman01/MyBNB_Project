class CreateImageTable < ActiveRecord::Migration[7.0]
  def change
    create_table :image_tables do |t|
      t.string :image_url, :string, null: false
      t.references :listings, :image_id, foreign_key:{to_table: :listings}
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
