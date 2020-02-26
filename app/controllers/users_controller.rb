class UsersController < ApplicationController

    def create
        user = User.new
        user.name = params[:user][:name]
        user.password = params[:user][:password]
        user.password_confirmation = params[:user][:password_confirmation]

        if user.password == params[:user][:password_confirmation]
            user.save!
            session[:user_id] = user.id
        else
            redirect_to new_user_path
        end
    end

    private


end
