class Bath < ApplicationRecord
  belongs_to :pet

  SERVICE = ["banho", "tosa", "banho e tosa"]

  validates :date, presence: true

  after_update :send_mail
  after_create :send_mail

  def send_mail
    UserMailer.notification(self).deliver_now if notification
  end
end
