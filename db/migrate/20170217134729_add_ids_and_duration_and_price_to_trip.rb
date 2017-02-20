class AddIdsAndDurationAndPriceToTrip < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :schedule_id, :integer
    add_column :trips, :direction_id, :integer
    add_column :trips, :duration, :string
    add_column :trips, :price, :integer
    add_column :trips, :number_person, :integer 
  end
end
