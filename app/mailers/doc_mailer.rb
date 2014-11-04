class DocMailer < ActionMailer::Base
  default from: 'gamahead@gmail.com'
  def welcome_email(user)
  	@user = user
  	mail(to: @user.email, subject: 'This is a test')
  end
end
