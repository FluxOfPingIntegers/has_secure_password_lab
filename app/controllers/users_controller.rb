class UsersController < ApplicationController
  def home
    @user = User.find(session[:user_id])
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to sessions_create_path
    else
      flash[:error] = "Invalid Username and/or Password, Please try again."
      redirect_to users_new_path
    end
  end

  def show
  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
