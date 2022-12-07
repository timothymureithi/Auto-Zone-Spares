class ReviewsController < ApplicationController

    def index
        render json: @product.reviews
      end

    def show
         @review = Review.find(params[:id])
         render json: @review
    end

end
