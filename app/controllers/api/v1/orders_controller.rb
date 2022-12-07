class Api::V1::OrdersController < ApplicationController
    before_action :set_order, only: [:show, :update, :destroy]

    def index
        @orders = Order.all
        render json: @orders
      end

      def show
        render json: @order
      end

      def create
        @order = Order.new(order_params)
    
        if @order.save
          render json: @order
        else
          render json: @order.errors, status: :unprocessable_entity
        end
      end

      def update
        if @order.update(order_params)
          render json: @order
        else
          render json: @order.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @order.destroy
      end

      private

      def set_order
        @order = Order.find_by_id(params[:id])
      end

      def order_params
        params.require(:order).permit(:user_id, :itemsPrice, :taxPrice, :shippingPrice, 
        :totalPrice, :isPaid, :paidAt, :isDelivered, :deliveredAt,
        :shipping => {}, 
        :payment => {},
        :cartItems => [:product, :name, :price, :image, :qty, :countInStock])
      end

    

end
