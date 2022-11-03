class DropColImages < ActiveRecord::Migration[7.0]
  def change
    remove_column :image_tables, :image_id_id
  end
end
