class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description

  has_many :orders

  attribute :num_orders do |item|
    item.orders.count
  end
end
