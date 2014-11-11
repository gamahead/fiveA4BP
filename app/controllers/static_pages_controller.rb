# -*- encoding : utf-8 -*-
#!/bin/env ruby
# encoding: utf-8

class StaticPagesController < ApplicationController

  def home
    @home = true
    if !signed_in?
      flash[:danger] = "You must be logged in to do that!"
      redirect_to new_session_path
    else
      @user = current_user
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def intro
  end
end
