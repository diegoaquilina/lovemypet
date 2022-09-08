class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notification.subject
  #
  def notification(email)
    @notification = email.pet.user.email
    @name = email.pet.user.first_name
    @url = 'https://lovemypetapp.herokuapp.com/'

    mail(to: @notification,
         subject: "⏰ -- Relaxe! Iremos te avisar dos compromissos do seus pets 🐶🐱-- ⏰")
  end
end
