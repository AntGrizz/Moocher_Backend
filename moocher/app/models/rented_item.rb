class RentedItem < ApplicationRecord
  belongs_to :renter, class_name: "User",  foreign_key: :renter_id
  belongs_to :item,  foreign_key: :item_id

  def rented_items_serializer
   {id: self.id , renter: self.renter, item: self.item.item_serializer, start_date: self.start_date, end_date: self.end_date, start_condition: self.start_condition, end_condition: self.end_condition, status: self.status}
  end


end
