class UsersController < ApplicationController
    
	def new
		@user = User.new
	end
	
	def create
		User.create(user_params)
		
		redirect_to "/sessions/new"
	end
	
	def success
	end

private

	def user_params
		params.require(:user).permit(:name, :email_address, :password)
	end

end

