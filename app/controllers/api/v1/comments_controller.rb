class Api::V1::CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def create 
        comment = review.comments.build(comment_params)
    end

    def destroy 

    end

    private
    def comment_params
        params.require(:comment).permit(:content, :review_id)
    end
end