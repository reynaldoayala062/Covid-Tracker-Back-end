class UsersController < ApplicationController

    def create 
        @user = User.create(users_params)
        render :json => @user.as_json(except: [:password_digest]), :status => :ok
    end

    private 

    def users_params
        params.require(:user).permit(:first_name,:last_name,:email,:address,:password)
    end

end
