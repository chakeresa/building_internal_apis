class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :order_number
end
