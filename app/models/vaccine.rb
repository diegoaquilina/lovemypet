class Vaccine < ApplicationRecord
  belongs_to :pet

  VACCINE = ["V8/V10", "Raiva", "Giárdia", "Leishmaniose", "Gripe"]

  def self.end_date_vaccine(app_date)
    end_date = app_date + 365
  end

  validates :app_date, presence: true
end
