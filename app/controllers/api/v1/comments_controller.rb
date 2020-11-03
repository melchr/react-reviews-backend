class Api::V1::CommentsController < ApplicationController

    before_action :find_review, except: [:destroy]

    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def create 
        comment = review.comments.build(comment_params)
        if comment.save
            render json: ReviewSerializer.new(review), status: :accepted
        else
            render json: {errors: review.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy 
        comment = Comment.find_by(id: params[:id])
        review = Review.find(comment.review_id)
        comment.destroy
        render json: ReviewSerializer.new(review)
    end

    private

    def find_review
        review = Review.find(params[:review_id])
    end

    def comment_params
        params.require(:comment).permit(:content, :review_id)
    end
end