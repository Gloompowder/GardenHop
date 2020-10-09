class Api::V1::GardensController < ApplicationController
    def index 
        @gardens = Garden.all 
        render json: @gardens
    end 

    def show
        @garden = Garden.find(params[:id])
        render json: @garden
    end 

    def create 
        @garden = Garden.create(garden_params)
        render json: @garden
    end

    def update 
        @garden = Garden.find(params[:id])
        @garden.update(garden_params)
        render json: @garden
    end 

    def destroy
        @garden = Garden.find(params[:id])
        @garden.destroy
    end

    private 

    def garden_params 
        params.require(:garden).permit(:property_id, 
        :boro, 
        :community_board, 
        :address, 
        :garden_size, 
        :jurisdiction, 
        :neighborhood_home, 
        :cross_streets,
        :latitude, 
        :latitude, 
        :postcode)
        # t.string "property_id"
        # t.string "boro"
        # t.string "community_board"
        # t.string "address"
        # t.string "garden_size"
        # t.string "jurisdiction"
        # t.string "neighborhood_home"
        # t.string "cross_streets"
        # t.string "latitude"
        # t.string "longitude"
        # t.string "postcode"
        # t.datetime "created_at", precision: 6, null: false
        # t.datetime "updated_at", precision: 6, null: false
    end
end