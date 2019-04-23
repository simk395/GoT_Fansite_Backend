class UserLikesCommentsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        @likes = UserLikesComment.all 
        render json: @likes
    end

    def create
        @like = UserLikesComment.find_or_create_by(likes_params)
        UserDislikesComment.find_or_initialize_by(likes_params).destroy
        render json: UserLikesComment.all
    end

    private

    def likes_params
        params.require(:vote).permit(:user_id, :comment_id)
    end
end
