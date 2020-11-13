class Api::V1::UsersController < ApplicationController
    def index 
        @users = User.all
        render json: @users
    end 

    def show 
        @user = User.find(params[:id])
        render json: @user
    end 

    def create 
        @user = User.find_or_create_by(params[:id])
    end
    def update 
    end 
    def destroy
    end
end
