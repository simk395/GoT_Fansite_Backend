class UserDisDislikesCommentsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        @dislikes = UserDislikesComment.all 
        render json: @Dislikes
    end

    def create
        @dislikes = UserDislikesComment.all 
        UserDislikesComment.find_or_create_by(dislikes_params)
        render json: @dislikes
    end

    def destroy
        @dislikes = UserDislikesComment.all 
        UserDislikesComment.find(params[:id]).destroy
        render json: @dislikes
    end

    private

    def Dislikes_params
        params.require(:dislike).permit(:user_id, :comment_id)
    end
end
