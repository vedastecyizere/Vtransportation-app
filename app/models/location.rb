class Location < ApplicationRecord
  has_many :trips
  has_many :departures through: :trips 
end
