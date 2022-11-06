class RemoveColumnEndData < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :end_data
    add_column :reservations, :end_date, :string, null: false
  end
end
