class OrderSerializer < ActiveModel::Serializer
  attributes :id,:id, :user_id, :cartItems, :shipping, :payment, :itemsPrice, :taxPrice, 
  :shippingPrice, :totalPrice, :isPaid, :paidAt, :isDelivered, :deliveredAt, :created_at, :updated_at
  belongs_to :user
end
