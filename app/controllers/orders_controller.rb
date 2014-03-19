class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order= OrderForm.new(params[:order]).order
    if @order.save
      render :show
    end
  end
  
end
