class ChangeEndDateOnRentedItem < ActiveRecord::Migration[5.2]
  def change
    change_column_default :rented_items, :end_condition, true
  end
end
