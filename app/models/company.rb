class Company < ApplicationRecord
  has_many :images
  has_many :trips 
  has_many :locations, through: :trips 
  has_many :departures, through: :trips
end
