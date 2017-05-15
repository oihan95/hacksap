class SessionsController < ApplicationController
  def new
  end

  def create
    erab = params[:session][:erab_izena].downcase
    user = User.find_by(erab_izena: params[:session][:erab_izena].downcase)
    if user.nil?
      flash.now[:danger] = 'Erabiltzaile hau ez da existitzen'
      render 'new'
    else
      if user.authenticate(params[:session][:password])
        log_in user
        redirect_to menu_path
      else
        flash.now[:danger] = 'Pasahitza ez da zuzena'
        render 'new'
      end
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
