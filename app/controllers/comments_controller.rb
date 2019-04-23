class CommentsController < ApplicationController
    skip_before_action :authorized, only: [:index, :destroy]
    def index
        render json: Comment.all
    end

    def create
        @comment = Comment.create(comment_params)
        render json: @comment
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        render json: Comment.all
    end

    def destroy
        Comment.find(params[:id]).destroy
    end

    private

    def comment_params
        params.require(:comment).permit(:post_id, :message, :user_id)
    end
end
