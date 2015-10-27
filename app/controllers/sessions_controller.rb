class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to session_path(session[:user_id])
  end
  
  def index
  end
  
  def show
    @user = User.find_by_id(session[:user_id])
    if not @user
      redirect_to '/auth/facebook'
    end
  end
  
  def destroy
    session[:user_id] = nil
     @user = User.find_by_id(session[:user_id])
     
    redirect_to root_url
  end
end
