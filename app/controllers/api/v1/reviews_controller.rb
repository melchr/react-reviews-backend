class Api::V1::ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: ReviewSerializer.new(reviews)
    end

    def create 
    end

    def show
        render json: Review.find(params[:id])
    end
end