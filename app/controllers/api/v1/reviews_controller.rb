class Api::V1::ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: ReviewSerializer.new(reviews)
    end

    def create 
        review = Review.new(review_params)
        if review.save
            render json: ReviewSerializer.new(review), status: :accepted
        else
            render json: {errors: event.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        render json: Review.find(params[:id])
    end
end