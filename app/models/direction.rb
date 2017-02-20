class Direction < ApplicationRecord
  has_many :trips
  has_many :schedules, through: :trips 
end
