class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(erab_izena: params[:session][:erab_izena].downcase)
    if user && user.authenticate(params[:session][:pasahitza])
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      render 'new'
    end
  end

  def destroy
  end
end
