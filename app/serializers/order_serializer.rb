class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :order_number

  has_many :items
end
