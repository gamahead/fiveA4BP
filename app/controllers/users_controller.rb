# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
  	@users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    # @microposts = @user.microposts.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      @user.update_attribute(:answers,['','','','',''].to_yaml)
      @user.update_attribute(:final_feedback,['','','','',''].to_yaml)
      flash[:success] = "Account Successfully Created"
      redirect_to intro_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find_by(current_user.email).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end

  private

  	def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :clinic)
    end

    # Before filters

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
