class UsersController < ApplicationController
  def new
  end

  def create
    if params[:user][:password] == params[:user][:password_confirmation]
      user = User.create(user_params)
      session[:user_id] = user.id
      redirect_to users_show_path(user)
    else 
      redirect_to users_new_path
    end 
  end

  def show
    @user = User.find_by(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
