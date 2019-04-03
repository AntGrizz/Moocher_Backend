class User < ApplicationRecord
  # has_many :borrowers, class_name: "Borrowed_Item", foreign_key: "borrower_id" # cch
  # has_many :owner, class_name: "Item", foreign_key: "owner_id"
  has_many :rented_items
  has_many :borrowers, through: :rented_items

  has_many :owners, through: :rented_items

  has_many :owner_items, class_name: "Item", foreign_key: :owner_id

  has_many :user_groups
  has_many :groups, through: :user_groups

  def owner_serializer
    {name: self.name, username: self.username, street: self.street, city: self.city, state: self.state, zip_code: self.zip_code, owner_rating: self.owner_rating, borrower_rating: self.borrower_rating}
  end

  def user_serializer
    {name: self.name, username: self.username, street: self.street, city: self.city, state: self.state, zip_code: self.zip_code, owner_rating: self.owner_rating, borrower_rating: self.borrower_rating, items: self.owner_items}
  end

end
