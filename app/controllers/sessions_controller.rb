class SessionsController < ApplicationController

    def new
        @user = User.new
    end 

    def create
        if @user = User.find_by(name: params[:user][:name])
            if @user && @user.authenticate(params[:user][:password])
                @user.save
                session[:user_id] = @user.id
            else
                return head(:forbidden)
            end 
        else 
            redirect_to login_path
        end 
    end 

    

end
