class Api::V1::ReviewsController < ApplicationController
    def index
        render json: Review.all
    end

    def create 
    end
    
    def show
        render json: Review.find(params[:id])
    end
end