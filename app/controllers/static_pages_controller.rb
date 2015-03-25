# -*- encoding : utf-8 -*-
#!/bin/env ruby
# encoding: utf-8

require 'yaml'

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

    def export_to_csv       
      @users = User.find(:all)
      csv_string = CSV.generate do |csv|
           csv << ["Id", "Name", "Email","Role"]
           @users.each do |user|
             csv << [user.id, user.name, user.name, user.role]
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
