class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notification.subject
  #
  def notification
    @user = params[:user]
    @url = 'https://lovemypetapp.herokuapp.com/'

    mail(to: @user.email,
         subject: "⏰ -- Esta chegando a hora de cuidar de seu pet 🐶🐱-- ⏰")
  end
end
