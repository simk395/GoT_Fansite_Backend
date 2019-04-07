class CommentController < ApplicationController
    def index
        render json: Comment.all
    end

    def create
        Comment.create(comment_params)
    end

    private

    def comment_params
        params.permit(:post_id, :profile_id, :message)
    end
end
