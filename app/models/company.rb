class Company < ApplicationRecord
  has_many :trips 
  has_many :locations, through: :trips 
end
