class DropColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :text
  end
end
