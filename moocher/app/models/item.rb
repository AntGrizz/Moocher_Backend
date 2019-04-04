class Item < ApplicationRecord
  belongs_to :user
  has_many :rented_items
  has_many :borrowers, class_name: "User", through: :rented_items

  def item_serializer
    {id: self.id, description: self.description, image: self.image, condition: self.condition, owner: self.user.user_serializer}
  end

end
