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

  def update
    @order = Order.find(params[:id])
    @order.update(status: params[:order][:status])
    @order.save
    render :index
  end
  
end
