class UserLikesCommentsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        @likes = UserLikesComment.all 
        render json: @likes
    end

    def create
        UserLikesComment.find_or_create_by(likes_params)
        UserDislikesComment.find_or_initialize_by(likes_params).destroy
        @likes = UserLikesComment.all 
        render json: @likes
    end

    private

    def likes_params
        params.require(:vote).permit(:user_id, :comment_id)
    end
end
