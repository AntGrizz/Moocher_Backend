class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update]

  def index
    all_users = User.all
    render json: all_users.map{|user| user.user_items_serializer}
  end

  def show

  end

  def new

  end

  def create
    User.create(first_name: params[:first_name], last_name: params[:last_name], username: params[:username], password: params[:password], street: params[:password], city: params[:city], zip_code: params[:zip_code], state: params[:state], user_rating: params[:first_name], renter_rating: 5)
  end

  def profile
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    if @user
      render json: @user.user_items_serializer
    end
  end

  private

  def get_user
    @user = Users.find(params[:id])
  end

end
