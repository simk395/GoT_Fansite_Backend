class UserLikesCommentsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        @likes = UserLikesComment.all 
        render json: @likes
    end

    def create
        UserLikesComment.find_or_create_by(likes_params)
    end

    def destroy
        UserLikesComment.find(params[:id]).destroy
    end

    private

    def likes_params
        params.require(:like).permit(:user_id, :comment_id)
    end
end
