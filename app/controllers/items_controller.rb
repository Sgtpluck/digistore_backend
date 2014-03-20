class ItemsController < ApplicationController
  before_action :find_item, except: [:index, :create]

  def index
    @items = Item.all
  end

  def show
  end

  def create
    @item = ItemForm.new(params[:item]).item
    if @item.save
      render :show
    end
  end

  def update
    @item.update(ItemForm.new(params[:item]).permitted_values)
    @item.save
    render :index
  end

  def destroy
    @item.destroy
    render :index
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

end
