# -*- encoding : utf-8 -*-
class ModsController < ApplicationController

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

  def explain
    @aType = Mod.find(params[:id]).aType
    @explanation = Mod.find(params[:id]).explanation
  end

  def show
  end
end
