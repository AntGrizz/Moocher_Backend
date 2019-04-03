class UsersController < ApplicationController

  def index
    all_users = User.all
    render json: all_users.map{|user| user.user_serializer}
  end

  def new

  end

  def create

  end

  def show

  end

end
