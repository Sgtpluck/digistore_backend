class ItemsController < ApplicationController
  attr_accessor :product, :cart

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      render :show
    end
  end

  private

  def item_params
    params.require(:item).permit(:quantity, :product, :cart, :currentPrice)
  end
end
