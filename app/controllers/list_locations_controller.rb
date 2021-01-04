class ListLocationsController < ApplicationController

    def index
        @list_locations = ListLocation.all
        render json: @list_locations, only: [:id], include: [:favorite_list, :location]
    end

    def show
        @list_location = ListLocation.find(params[:id])
        render json: @list_location, only: [:id], include: [:favorite_list, :location]
    end

    def create
        @list_location = ListLocation.create(list_location_params)
        render json: @list_location, only: [:id], include: [:favorite_list, :location]
    end 

    def update
        @list_location = ListLocation.find(params[:id])
        @list_location.update(list_location_params)
        render json: @list_location, only: [:id], include: [:favorite_list, :location]
    end 

    def destroy
        @list_location = ListLocation.find(params[:id])
        @list_location.destroy
    end 
    
    private

    def list_location_params
        params.require(:list_location).permit(:favorite_list_id, :location_id)
    end

    

end
