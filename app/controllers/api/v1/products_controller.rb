class Api::V1::ProductsController < ApplicationController
    before_action :set_product, only: [:show, :update, :destroy]

    def index
        @products = Product.all
        render json: @products
      end

    def show
        @product = Product.new(product_params)
        if @product.save 
            render json: @product
        else
            render json: @product.errors, status: :unprocessable_entity
        end
    end

      private
            
end
