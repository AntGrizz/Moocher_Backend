class CreateRentedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :rented_items do |t|
      t.belongs_to :owner
      t.belongs_to :borrower
      t.belongs_to :item
      t.date :start_date
      t.date :end_date
      t.string :start_condition
      t.string :end_condition
      t.string :availability

      t.timestamps
    end
  end
end
