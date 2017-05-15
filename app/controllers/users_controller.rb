class UsersController < ApplicationController

  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Erabiltzailea ongi sortu da"
      redirect_to :back      
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:izena, :abizena, :erab_izena, :password, :password_confirmation)
    end

    def authenticate_user!
      if logged_in?
        redirect_to menu_path
      end
    end
end
