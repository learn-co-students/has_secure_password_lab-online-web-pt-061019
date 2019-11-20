class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:notice] = "Incorrect login"
      redirect_to sessions_path
    # @user = User.find(params[:user])
	  #   return head(:forbidden) unless @user.authenticate(params[:password])
	  #   session[:user_id] = @user.id
    end
  end

  def destroy
  end
end
