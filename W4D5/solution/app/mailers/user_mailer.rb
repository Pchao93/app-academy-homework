class UserMailer < ApplicationMailer


  def welcome_email(user)
      # your code here
      @user = user
      @url = "http://example.com/session/new"
      mail(to: user.username, subject: "Welcome!")
    end

end
