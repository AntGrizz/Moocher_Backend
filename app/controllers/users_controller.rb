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
    @user = User.create(user_params)
      if @user.save
      payload = {user_id: @user.id}
      token = encode(payload)
      render json: {
        message: "Authenticated! You are logged in",
        authenticated: true,
        user: @user.user_items_serializer,
        token: token
      }, status: :accepted
    end
  end

  def profile
    # byebug
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    if @user
      render json: @user.user_items_serializer
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password, :street, :city, :zip_code, :state, :user_rating, :renter_rating)
  end

  def get_user
    @user = Users.find(params[:id])
  end

end
