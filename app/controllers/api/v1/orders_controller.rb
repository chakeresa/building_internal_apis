class Api::V1::OrdersController < ApplicationController
  def index
    render json: OrderSerializer.new(Order.all)
  end

  def show
    render json: OrderSerializer.new(Order.find(params[:id]))
  end
end
