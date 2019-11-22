require 'pry'
class UsersController < ApplicationController
    
    def welcome
    end
    
    def new
    end

    def create
        @user = User.create(user_params)
        if @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to '/'
        else
        redirect_to '/new'
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end