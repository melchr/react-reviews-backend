class Api::V1::CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def create 

    end

    def destroy 

    end
end