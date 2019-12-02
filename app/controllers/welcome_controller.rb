class WelcomeController < ApplicationController 

  def index 
    if session[:user_id]
      <h1>Hi</h1>
  end

end 