class Vaccine < ApplicationRecord
  belongs_to :pet

  VACCINE = ["V8/V10", "Raiva", "Giárdia", "Leishmaniose", "Gripe"]

  def self.end_date_vaccine(app_date)
    end_date = app_date + 365
  end

  validates :app_date, presence: true

  after_update :send_mail
  after_create :send_mail

  def send_mail
    UserMailer.notification(self).deliver_now if notification
  end
end
