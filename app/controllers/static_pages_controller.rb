class StaticPagesController < ApplicationController
  def home
  	@micropost = current_user.microposts.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end

  def module1
  	@mod_num = 1
  end

  def module2
  	@mod_num = 2
  end

  def module3
  	@mod_num = 3
  end

  def module4
  	@mod_num = 4
  end

  def module5
  	@mod_num = 5
  end
end
