class SessionsController < ApplicationController


	def new
	end

	def create
		user = User.where(email_address: params[:session][:email_address])
		
		if user.first
			if user.first.authenticate(params[:session][:password])
				# Successfully authenticated!
				redirect_to :success_users
			else
				flash[:error] = "Incorrect password!"
				redirect_to :new_session
			end
		else
			flash[:error] = "No user found!"
			redirect_to :new_session
		end
	end

end

