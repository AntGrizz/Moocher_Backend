class RentedItemsController < ApplicationController
before_action :get_rental, only: [:show, :edit, :update]

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

  def update
    @rental.update_attributes(rented_items_params)
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    if @user
      render json: @user.user_items_serializer
    end
  end

  private

  def get_rental
    @rental = RentedItem.find(params[:id])
  end

  def rented_items_params
    params.permit(:status)
  end


end
