class Bath < ApplicationRecord
  belongs_to :pet

  SERVICE = ["banho", "tosa", "banho e tosa"]
end
