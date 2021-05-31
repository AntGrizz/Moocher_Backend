class GroupsController < ApplicationController

  def index
    @groups = Group.all
    render json: @groups.map{|group| group.group_item_serializer}
  end

  def new

  end

  def create

  end

  def show

  end

end


# Group.first.users.map {|user| user.items}
