class Location < ApplicationRecord
  has_many :destinations, foreign_key: "destination_id", class_name: "Trip"
  has_many :origins, foreign_key: "origin_id", class_name: "Trip"
  has_many :trips
  has_many :companies, through: :trips
  has_many :departures, through: :trips

end
