class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(erab_izena: params[:session][:erab_izena].downcase)
    if user && user.authenticate(params[:session][:pasahitza])
    	log_in user
    	redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
  end
end
