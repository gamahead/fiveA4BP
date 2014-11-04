# -*- encoding : utf-8 -*-
#!/bin/env ruby
# encoding: utf-8

class StaticPagesController < ApplicationController


  def home
    @home = true
  end

  def help
  end

  def about
  end

  def contact
  end

  def intro
    @home = true
  end
end
