class Api::V1::CommentsController < ApplicationController
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

    end

    private
    def comment_params
        params.require(:comment).permit(:content, :review_id)
    end
end