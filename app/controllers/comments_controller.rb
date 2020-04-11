class CommentsController < ApplicationController
    before_action :authorized, only: [:create]

    def index
        @comments = Comment.all 
        render json: @comments
    end
    
    def create
        @comment =  @user.comments.create(comment_params)
        render json: @comment 
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.update
        render json: @comment
    end

private

    def comment_params
        params.permit(:text, :babble_id)
    end
end
