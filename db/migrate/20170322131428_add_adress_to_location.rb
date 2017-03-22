class AddAdressToLocation < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :longitude, :string
    remove_column :locations, :latitude, :string
  end
end
