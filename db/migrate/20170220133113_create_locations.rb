class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :district
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
