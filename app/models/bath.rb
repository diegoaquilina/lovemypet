class Bath < ApplicationRecord
  belongs_to :pet

  SERVICE = ["banho", "tosa", "banho e tosa"]

  validates :date, presence: true

  def self.end_date_bath(date)
    stink =  Date.today - date
  end
end
