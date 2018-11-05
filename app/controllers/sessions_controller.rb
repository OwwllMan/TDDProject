class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
        redirect_to root_url
        flash[:primary] = "Vous êtes connecté ! "
    else
      flash[:danger] = 'Email ou Mot de passe invalide ! '
      render "new"
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
    flash[:primary] = "Vous êtes déconnecté ! "
  end
end
