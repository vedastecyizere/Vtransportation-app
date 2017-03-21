class Trip < ApplicationRecord
  belongs_to :company, optional: true
  belongs_to :departure, optional: true
  belongs_to :location, optional: true
  belongs_to :destination, foreign_key: "destination_id", class_name: "Location"
  belongs_to :origin, foreign_key: "origin_id", class_name: "Location"
  has_many :bookings
  has_many :users, through: :bookings 

  validates :number_person, presence: true 
  validate :number_person_must_be_greater_than_0

  def reduce_available_ticket_by_one
    available_ticket = number_person - 1 
    self.number_person = available_ticket
    self.save 
  end

  def number_person_must_be_greater_than_0
    if number_person && number_person <= 0
      errors.add(:number_person, "Sorry! No ticket remaining. You can pick from other trips")
    end 
    
  end
end
