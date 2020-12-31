class UsersController < ApplicationController

    def index 
        @users = User.all 
        render :json => @users
    end

    def create 
        @user = User.create(users_params)
        render :json => @user.as_json(except: [:password_digest]), :status => :ok
    end

    def edit
    end

    def delete 
    end


    private 

    def users_params
        params.require(:user).permit(:first_name,:last_name,:email,:address,:password)
    end

end
