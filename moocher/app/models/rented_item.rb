class RentedItem < ApplicationRecord
  belongs_to :borrower, class_name: "User", foreign_key: :borrower_id
  belongs_to :item
end
