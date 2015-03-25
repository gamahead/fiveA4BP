# -*- encoding : utf-8 -*-
#!/bin/env ruby
# encoding: utf-8

require 'yaml'
require 'csv'

class StaticPagesController < ApplicationController

  def home
    @home = true
    @user = current_user
    puts !signed_in?
    if !signed_in?
      flash[:danger] = "Please login or create an account before accessing the home page"
      redirect_to new_session_path
    end
  end

  def finalFb
    cuffy = []
    # cuffy = YAML.load(current_user.final_feedback) #cuffy for current user final feedback yaml
    i = 0 

    # I don't like having to iterate through the params like this, but it seems better than
    # making multiple reads/writes to the db

    params.each do |key,value|
      if key.include? "primary"
        cuffy[i] = value
        i += 1
      end
    end

    current_user.update_attribute(:final_feedback,cuffy.to_yaml)

    flash[:success] = 'Answer successfully submitted'
    redirect_to root_url
  end

  def help
  end

  def about
    DocMailer.data_email(current_user).deliver

    # This method consolidates user information and sends a csv to the user
    # TODO: Make sure not all users are able to access this functionality
    def export_to_csv

      @users = User.all

      csv_string = CSV.generate do |csv|

        csv << ["Clinic", "Name", "Email", "Q1", "Q2", "Q3", "Q4", "Q5", "F1", "F2", "F3", "F4", "F5"]
        
        for user in @users
          answers = YAML::load(user.answers) # answers to modules

          if answers.nil?
            answers = ['','','','','']
          end

          # Null entries cause problems with converting to string for the csv
          ff = YAML::load(user.final_feedback).nil? ? ['','','','',''] : YAML::load(user.final_feedback) # final feedback responses
          
          put "OMFG WHAT THE HELL IS GOING ON IN THIS COLD COLD WORLD**************************"
          puts ff

          # Null entries cause problems with converting to string for the csv
          if ff.nil?
            ff = ['','','','','']
          end

          (answers << ff).flatten!
          info = [user.clinic, user.name, user.email]
          (info << answers).flatten!
          csv << info
        end
      end         
    send_data csv_string,
    :type => 'text/csv; charset=iso-8859-1; header=present',
    :disposition => "attachment; filename=users.csv" 
   end
   export_to_csv
  end

  def contact
  end

  def intro
  end

  def forbes
  end
end
