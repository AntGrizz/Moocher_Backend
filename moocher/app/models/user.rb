class User < ApplicationRecord
  # has_many :borrowers, class_name: "Borrowed_Item", foreign_key: "borrower_id" # cch
  # has_many :owner, class_name: "Item", foreign_key: "owner_id"
  has_many :rented_items
  has_many :borrowers, through: :rented_items

  has_many :owners, through: :rented_items

  has_many :items
  
  has_many :user_groups
  has_many :groups, through: :user_groups
end
 