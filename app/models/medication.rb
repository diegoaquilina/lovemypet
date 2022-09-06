class Medication < ApplicationRecord
  belongs_to :pet

  validates :start_date, :end_date, presence: true
end
