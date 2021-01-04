class UsersController < ApplicationController

    # def index 
    #     @users = User.all 
    #     render json: @users, only: [:id, :first_name, :last_name, :email, :address]
    # end

    def show
        @user = User.find(params[:id])
        render json: @user, only: [:id, :first_name, :last_name, :email, :address, :password_digest]
    end

    def create 
        @user = User.create(users_params)
        render :json => @user.as_json(except: [:password_digest]), :status => :ok
    end

    def edit
        @user = User.find(params[:id])
        @user.update(users_params)
        render json: @user, only: [:id, :first_name, :last_name, :email, :address, :password_digest]
    end

    def delete 
        @user = User.find(params[:id])
        @user.destroy
    end


    private 

    def users_params
        params.require(:user).permit(:first_name, :last_name, :email, :address, :password)
    end

end
