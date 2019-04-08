class PostsController < ApplicationController
    skip_before_action :authorized
    def index
        render json: Post.all
    end
end
