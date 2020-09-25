class CategoriesController < ApplicationController

    def index
        @categories = Category.all
        render json: @categories
    end

    def show
        @category = Category.find_by(name: params[:name])
        render json: @category
    end
end