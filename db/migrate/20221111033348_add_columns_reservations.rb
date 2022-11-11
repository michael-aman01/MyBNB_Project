class AddColumnsReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :adult_count, :integer
    add_column :reservations, :children_count, :integer
    add_column :reservations, :infant_count, :integer
    add_column :reservations, :pet_count, :integer
  end
end
