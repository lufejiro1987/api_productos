class ProductsController < ApplicationController
    def index
        @category = Category.find_by(name: params[:name])
        @products = Product.where(category_id: @category.id)

        render json: @products
    end
end