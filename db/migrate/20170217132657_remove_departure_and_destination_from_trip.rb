class RemoveDepartureAndDestinationFromTrip < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :departure, :string
    remove_column :trips, :destination, :string
  end
end
