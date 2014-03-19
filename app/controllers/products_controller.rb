class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render :show
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy!
    render :index
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    render :index
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :avatar, :image)
  end
end
