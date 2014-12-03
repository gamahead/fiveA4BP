# -*- encoding : utf-8 -*-
#!/bin/env ruby
# encoding: utf-8

require 'yaml'

class StaticPagesController < ApplicationController

  def home
    @home = true
    @user = current_user
    if !signed_in?
      flash[:danger] = "You must be logged in to do that!"
      redirect_to new_session_path
    end
  end

  def finalFb
    cuffy = YAML.load(current_user.final_feedback) #cuffy for current user final feedback yaml
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
  end

  def contact
  end

  def intro
  end

  def forbes
  end
end
