class RentedItemsController < ApplicationController

  def index
    all_rentals = RentedItem.all
    render json: all_rentals.map { |item| item.rented_items_serializer}
  end

  def new

  end

  def create

  end

  def show
    render json: RentedItem.find(params[:id])
  end


end
