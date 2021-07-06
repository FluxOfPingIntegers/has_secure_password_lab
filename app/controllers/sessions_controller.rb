class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:user][:name])
    if user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to users_home_url(user)
    else
      flash[:error] = "Invalid Username and/or Password, Please try again."
      redirect_to users_new_path
    end
  end
end
