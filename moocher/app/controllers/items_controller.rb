class ItemsController < ApplicationController
  before_action :get_item, only: [:destroy]

  def index
    items = Item.all
    render json: items.map{|item| item.item_serializer}
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

  def get_item
    @item = Item.find(params[:id])
  end

end
