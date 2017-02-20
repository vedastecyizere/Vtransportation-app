class CreateDepartures < ActiveRecord::Migration[5.0]
  def change
    create_table :departures do |t|
      t.string :time

      t.timestamps
    end
  end
end
