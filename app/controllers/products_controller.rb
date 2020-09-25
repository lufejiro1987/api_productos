class ProductsController < ApplicationController
    def index
        @category = Category.find_by(name: params[:name])
        @products = Product.where(category_id: @category.id)

        render json: @products
    end

    def show
        @category = Caegory.find_by(name: params[:name])
        @products = Product.where(category_id: @category.id, id: params[:id])

        render json: @products
    end
end