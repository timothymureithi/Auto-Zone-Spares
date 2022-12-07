class Api::V1::ProductsController < ApplicationController
    before_action :set_product, only: [:show, :update, :destroy]

    def index
        @products = Product.all
        render json: @products
      end


      private
            
end
