class RentedItemsController < ApplicationController
before_action :get_rental, only: [:show, :edit, :update]

  def index
    all_rentals = RentedItem.all
    render json: all_rentals.map { |rental| rental.rented_items_serializer}
  end

  def create
    # byebug
    @rented_item = RentedItem.create(create_rented_items_params)
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    if @user
      render json: @rented_item.rented_items_serializer
    end
  end


  def show
    render json: RentedItem.find(params[:id])
  end

  def update
    # byebug
    @rental.update_attributes(update_rented_items_params)
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

  def update_rented_items_params
    params.require(:rented_item).permit(:status, :end_condition)
  end

  def create_rented_items_params
    params.require(:rented_item).permit(:renter_id, :item_id, :start_date, :end_date, :start_condition, :status)
  end

end
