class UserMailer < ApplicationMailer
  def welcome_email
    @user = "soufiane.oucherrou@gmail.com"
    @url = "http://localhost:3000"
    mail(to: @user, subject: "Welcome to My Awesome Site")
  end
end
