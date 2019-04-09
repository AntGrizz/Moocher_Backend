class User < ApplicationRecord
  has_secure_password
  has_many :renters, through: :rented_items

  has_many :items

  has_many :user_groups
  has_many :groups, through: :user_groups

  def user_serializer
    {id: self.id, first_name: self.first_name, last_name: self.last_name, username: self.username, street: self.street, city: self.city, state: self.state, zip_code: self.zip_code, owner_rating: self.user_rating, renter_rating: self.renter_rating}
  end

  def user_items_serializer
    {id: self.id, first_name: self.first_name, last_name: self.last_name, username: self.username, street: self.street, city: self.city, state: self.state, zip_code: self.zip_code, owner_rating: self.user_rating, renter_rating: self.renter_rating, items: self.items}
  end

end
