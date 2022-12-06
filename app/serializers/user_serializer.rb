class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :isAdmin, :shipping, :payment
  has_many :orders
end
