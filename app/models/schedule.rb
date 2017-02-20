class Schedule < ApplicationRecord
  belongs_to :company, optional: true
  has_many :trips
  has_many :directions, through: :trips
end
