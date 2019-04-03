class ItemsController < ApplicationController

  def index
    items = Item.all
    render json: items.map{|item| item.item_serializer} 
  end

  def new

  end

  def create

  end

  def show

  end

end
