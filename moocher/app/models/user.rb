class User < ApplicationRecord
  has_many :borrowers, class_name: "Rented_Item", foreign_key: "borrower_id"
  has_many :owners, class_name: "Item", foreign_key: "owner_id"
  has_many :user_groups
  has_many :groups, through: :user_groups
end
 