class Appointment < ApplicationRecord
  belongs_to :pet

  after_update :send_mail
  after_create :send_mail

  def send_mail
    UserMailer.notification(self).deliver_now if notification
  end
end
