class UserLikesCommentsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        @likes = UserLikesComment.all 
        render json: @likes
    end

    def create
        @likes = UserLikesComment.all 
        UserLikesComment.find_or_create_by(likes_params)
        render json: @likes
    end

    def destroy
        @likes = UserLikesComment.all 
        UserLikesComment.find(params[:id]).destroy
        render json: @likes
    end

    private

    def likes_params
        params.require(:like).permit(:user_id, :comment_id)
    end
end
