# -*- encoding : utf-8 -*-

require 'yaml'

module MailHelper

  # Format users responses into a string for the email
  def format_answers(answers)

    user_answers = YAML::load(User.find_by(:email => 'joshua.rose@rochester.edu').answers)
    mail_string = "" # String to be returned containing formatted html and answers
    answer_number = 1

    for answer in user_answers
      mail_string += "<h3>"
      mail_string += "Question #{answer_number}: " + Mod.find(answer_number).aType 
      mail_string += "</h3>\n"
      mail_string += "<p>#{answer}<p>\n"
      answer_number += 1
    end

    mail_string

  end

end