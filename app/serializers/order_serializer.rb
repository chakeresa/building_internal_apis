class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :order_number

  has_many :items

  attribute :num_items do |object|
    object.items.count
  end

  attribute :greeting { "HELLO FRIENDS" }
end
