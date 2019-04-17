class UserDislikesCommentsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        @dislikes = UserDislikesComment.all 
        render json: @dislikes
    end

    def create
        UserDislikesComment.find_or_create_by(dislikes_params)
        UserLikesComment.find_or_initialize_by(dislikes_params).destroy
        @dislikes = UserDislikesComment.all 
        render json: @dislikes
    end

    private

    def dislikes_params
        params.require(:vote).permit(:user_id, :comment_id)
    end
end
