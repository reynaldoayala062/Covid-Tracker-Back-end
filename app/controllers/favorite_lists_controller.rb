class FavoriteListsController < ApplicationController
    before_action :authenticate!


    def index
        @favLists = FavoriteList.all
        render json: @favLists, only: [:id, :name, :detail], include: [:user]
    end

    def show
        @favList = FavoriteList.find(params[:id])
        render json: @favList, only: [:id, :name, :detail], include: [:user]
    end

    def create
        @newFavList = FavoriteList.create(favorite_list_params)
        render json: @newFavList, only: [:id, :name, :detail], include: [:user]
    end 

    def update
        @favList = FavoriteList.find(params[:id])
        @favList.update(favorite_list_params)
        render json: @favList, only: [:id, :name, :detail], include: [:user]
    end 

    def destroy
        @favList = FavoriteList.find(params[:id])
        @favList.destroy
    end 
    
    private

    def favorite_list_params
        params.require(:favorite_lists).permit(:name, :detail, :user_id)
    end


end
