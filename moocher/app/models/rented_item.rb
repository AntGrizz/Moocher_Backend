class RentedItem < ApplicationRecord
  belongs_to :borrower, class_name: "User",  foreign_key: :borrower_id
  belongs_to :item,  foreign_key: :item_id

  def rented_items_serializer
   {id: self.id ,borrower: self.borrower, item: self.item.rented_item_serializer, start_date: self.start_date, end_date: self.end_date, start_condition: self.start_condition, end_condition: self.end_condition}
  end

end
