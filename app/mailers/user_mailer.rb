class UserMailer < ApplicationMailer
  default from: 'unicorngamedatabase@example.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @user = user
    @url = "Need to add login address"

    mail to: user.email, subject: "Unicorn Game Database Sign Up Confirmation"
  end
end
