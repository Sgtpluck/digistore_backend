class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
  end

  def create
    @cart = Cart.new(cart_params)
    if @cart.save  
      render :show
    end
  end

  private

  def cart_params
    params.require(:cart).permit(:items => [])
  end
end
