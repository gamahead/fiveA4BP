# -*- encoding : utf-8 -*-

require 'yaml'
require 'pp'
class ModsController < ApplicationController

  def new
  end

  def one
    @aType = Mod.find(params[:id]).aType
    @dialogueHTML = Mod.find(params[:id]).dialogueOne
    @youtubeRes = Mod.find(params[:id]).vidOneSource
  end

  def two
    @aType = Mod.find(params[:id]).aType
    @dialogueHTML = Mod.find(params[:id]).dialogTwo # I spelled dialog differently than I did earlier.. I'm tired
    @youtubeRes = Mod.find(params[:id]).vidTwoSource
  end

  def feedback
    @aType = Mod.find(params[:id]).aType
  end

  def answer
    @aType = Mod.find(params[:id]).aType
    for i in 0..100
      puts i
      puts params[:feedback][:answer]
      # print current_user.name

    end
    if !signed_in?
      flash[:danger] = 'You need to be signed in to do that'

    elsif params[:feedback][:answer] != ""
      puts 'HERE IS WHERE WE ARE TESTING'
      user_answers = YAML.load(User.find_by(email: current_user.email).answers)
      # puts YAML.load(User.find_by(email: current_user.email).answers)[0]
      curr_user_answers = YAML.load(User.first.answers)
      curr_user_answers[params[:id].to_i - 1] = params[:feedback][:answer]
      puts curr_user_answers
      User.find_by(email: current_user.email).update_attribute(:answers,curr_user_answers.to_yaml)
      puts YAML.load(User.find_by(email: current_user.email).answers)

      # User.find_by(email: current_user.email).update_attributes(answers: )
      flash.now[:success] = 'Answer successfully submitted'
    else
      flash.now[:danger] = 'Answer required'
    end

    render 'feedback'

  end

  def explain
    @aType = Mod.find(params[:id]).aType
    @explanation = Mod.find(params[:id]).explanation
  end

  def show
  end

end
