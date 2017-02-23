class Trip < ApplicationRecord
  belongs_to :company
  belongs_to :departure
  belongs_to :Location
  belongs_to :destination, foreign_key: "destination_id", class_name: "Location"
  belongs_to :origin, foreign_key: "origin_id", class_name: "Location"
  

end
