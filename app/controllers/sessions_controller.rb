class SessionsController < ApplicationController

  def create
  	user1 = User.find_by_email(params[:email]).try(:authenticate, params[:password])
  	if user1
  		session[:user_id] = user1.id
  		redirect_to "/groups"
  	else
  		flash[:errors]=["Invalid login combination"]
  		redirect_to "/main"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to '/main'
  end

end
