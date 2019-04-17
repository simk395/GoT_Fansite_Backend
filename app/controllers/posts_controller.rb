class PostsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index
        render json: Post.all
    end

    def create
        @post = Post.create(post_params)
        render json: @post
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        render json: @post
    end
    private

    def post_params
        params.require(:post).permit(:title, :message, :category_id, :user_id)
    end
end
