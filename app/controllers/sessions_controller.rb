class SessionsController < ApplicationController

    def create
        @user - User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            payload = { user_id: @user.id }
            token = JWT.encode(payload,ENV['CRYPT'], 'HS256')
            render :json => { auth_key: token, user_id: @user.id, user: @user, user_opps: @user.opps}
        else
            render :json => { :msg => 'Login failed... Try Again' }
        end
    end


end
