class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
  end

  def create
    @cart = Cart.new
    if @cart.save  
      render :show
    end
  end
end
