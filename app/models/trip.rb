class Trip < ApplicationRecord
  belongs_to :company
  belongs_to :departure 
end
