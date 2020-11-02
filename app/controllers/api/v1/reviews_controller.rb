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
            render json: {errors: review.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        review = Review.find_by_id(params[:id])
        render json: ReviewSerializer.new(review)
    end

    private
    def review_params
        params.require(:review).permit(:title, :content, :genre, :img_url)
    end
end