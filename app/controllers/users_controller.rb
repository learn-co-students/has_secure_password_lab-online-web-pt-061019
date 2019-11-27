class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
    else
      redirect_to new_user_path
    end

    #should also redirect to user homepage here

    #redirects you if password and confirmation don't match. Probably using #authenticate
    # @user = User.create(user_params)
    # session[:user_id] = @user.id
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end


end
