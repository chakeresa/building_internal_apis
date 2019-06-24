class Api::V1::ItemsController < ApplicationController
  def index
    render json: Item.all
  end

  def show
    render json: Item.find(params[:id])
  end

  def create
    item = Item.new(item_params)
    item.save
    render json: item
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    render json: item
  end

  def destroy
    item = Item.find(params[:id])
    render json: item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :description)
  end
end
