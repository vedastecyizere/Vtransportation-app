class RemoveAndAddColumnsFromTrip < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :schedule_id, :integer 
    remove_column :trips, :direction_id, :integer
    add_column :trips, :origin_id, :integer
    add_column :trips, :destination_id, :integer 
    add_column :trips, :departure_id, :integer 
    add_column :trips, :company_id, :integer 
  end
end
