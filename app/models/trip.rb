class Trip < ApplicationRecord
  belongs_to :company, optional: true
  belongs_to :departure, optional: true
  belongs_to :location, optional: true
  belongs_to :destination, foreign_key: "destination_id", class_name: "Location"
  belongs_to :origin, foreign_key: "origin_id", class_name: "Location"
  has_many :bookings
  has_many :users, through: :bookings 
end
