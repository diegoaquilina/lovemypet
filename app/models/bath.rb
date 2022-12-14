class Bath < ApplicationRecord
  belongs_to :pet

  SERVICE = ["banho", "tosa", "banho e tosa"]

  validates :date, presence: true


  def self.end_date_bath(date)
    stink =  Date.today - date
  end

  after_update :send_mail
  after_create :send_mail

  def send_mail
    UserMailer.notification(self).deliver_now if notification
  end
end
