class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(erab_izena: params[:session][:erab_izena].downcase)
    if user && user.authenticate(params[:session][:password])
    	log_in user
    	redirect_to menu_path
    else
      render template: "index/index"
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
