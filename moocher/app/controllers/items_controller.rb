class ItemsController < ApplicationController
  before_action :get_item, only: [:destroy]

  def index
    items = Item.all
    render json: items.map{|item| item.item_serializer}
  end

  def create
    @item = Item.create!(item_params)
    if @item.save
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
      render json: @user.user_items_serializer
    end
  end

  def destroy
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    @item.destroy
    if @user
      render json: @user.user_items_serializer
    end
  end


private

  def item_params
    params.require(:item).permit(:name, :user_id, :description, :image, :condition)
  end

  def get_item
    @item = Item.find(params[:id])
  end

end
