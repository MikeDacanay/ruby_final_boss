class UsersController < ApplicationController

  def index
  end

  def create
  	User.create(user_params)
  	redirect_to '/main'
  end

  private
  	def user_params
  		params.require(:user).permit(:first_name, :last_name, :email, :password)
  	end
end
