class Bath < ApplicationRecord
  belongs_to :pet

  SERVICE = ["banho", "tosa", "banho e tosa"]

  validates :date, presence: true
end
