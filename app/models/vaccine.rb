class Vaccine < ApplicationRecord
  belongs_to :pet

  VACCINE = ["V8/V10", "Raiva", "Giárdia", "Leishmaniose", "Gripe"]
end
