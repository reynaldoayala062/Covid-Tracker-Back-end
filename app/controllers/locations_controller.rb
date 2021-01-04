class LocationsController < ApplicationController

    def index
        @locations = Location.all
        render json: @locations, only: [:id, :name, :address, :zipcode, :detail]
    end

    def show
        @location = Location.find(params[:id])
        render json: @location, only: [:id, :name, :address, :zipcode, :detail]
    end

    def create
        @newLocation = Location.create(location_params)
        render json: @newLocation, only: [:id, :name, :address, :zipcode, :detail]
    end 

    def update
        @location = Location.find(params[:id])
        @location.update(location_params)
        render json: @location, only: [:name, :address, :zipcode, :detail]
    end 

    def destroy
        @location = Location.find(params[:id])
        @location.destroy
    end 
    
    private

    def location_params
        params.require(:location).permit(:name, :address, :zipcode, :detail)
    end

end
