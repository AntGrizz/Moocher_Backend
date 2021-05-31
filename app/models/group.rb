class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups

  def group_item_serializer
      {name: self.name, users: self.users, items: self.users.map { |user| user.items}.flatten.map { |item| item.item_serializer} }
  end

end
