class DocMailer < ActionMailer::Base
  default from: ENV['gmail_username']
  def welcome_email(user)
  	@user = user
  	mail(to: @user.email, subject: 'This is a test')
  end
end
