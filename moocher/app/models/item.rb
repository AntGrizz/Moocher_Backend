class Item < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :owner_id
  has_many :rented_items
  has_many :borrowers, class_name: "User", through: :rented_items

  def rented_item_serializer
    {name: self.name, description: self.description, image: self.image, condition: self.condition, owner: self.owner.owner_serializer}
  end

  def item_serializer
    {id: self.id, description: self.description, image: self.image, condition: self.condition, owner: self.owner}
  end

end
