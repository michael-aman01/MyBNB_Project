class DropColImages2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :images, :string
  end
end
