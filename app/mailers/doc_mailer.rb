class DocMailer < ActionMailer::Base

  include MailHelper

  default from: :user_name
  
  def welcome_email(user)
  	@user = user
  	mail(to: 'gamahead@gmail.com', subject: 'This is a test')
  end

  def data_email(user)
  	@user = user
  	@formatted_answers = format_answers
  	mail(to: 'gamahead@gmail.com', subject: user.name+' Data')

  end

end
