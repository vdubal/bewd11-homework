class UsersController < ApplicationController
    before_action :authenticate

    def index
    end
  

    def create 
        user = User.create(user_params)
        
        if user.valid?
            render :nothing => true, status: 201
        else 
            render :nothing => true, status: 400
        
        end
    end



    def user_params
        params.require(:user).permit(:firstname, :lastname, :email, :password)
    end

end
