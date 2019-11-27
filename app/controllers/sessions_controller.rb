class SessionsController < ApplicationController

  def new
    #THIS IS INCORRECT. Can't figure out how to get the login working.
    @user = User.new
  end

  def create
    # binding.pry
    @user = User.find_by(name: params[:user][:name])
    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
    end
  end

end
