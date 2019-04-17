class CategoriesController < ApplicationController
    skip_before_action :authorized
    def index
        render json: Category.all
    end
end
