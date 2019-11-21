class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(name: params[:user][:name])
    authenicated = user.try(:authenticate, params[:user][:password])
    return head(:forbidden) unless authenicated
    @user = user
    session[:user_id] = @user.id
  end 



  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end


end
