require 'rails_helper'

describe "Orders API" do
  it "sends a list of orders" do
    create_list(:order, 3)

    get '/api/v1/orders'

    expect(response).to be_successful

    orders = JSON.parse(response.body)["data"]

    expect(orders.count).to eq(3)
  end

  it "can get one order by its id" do
    id = create(:order).id

    get "/api/v1/orders/#{id}"

    order = JSON.parse(response.body)["data"]

    expect(response).to be_successful
    expect(order["id"].to_i).to eq(id)
  end
end
