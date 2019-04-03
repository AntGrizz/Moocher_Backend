class Item < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :owner_id
  has_many :rented_items
  has_many :borrowers, class_name: "User", through: :rented_items
end
