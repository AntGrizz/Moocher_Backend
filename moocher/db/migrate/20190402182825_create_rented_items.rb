class CreateRentedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :rented_items do |t|
      t.references :owner, index: true
      t.references :borrower, index: true, :default => false
      t.references :item, index: true
      t.date :start_date
      t.date :end_date
      t.string :start_condition
      t.string :returned_condition
      t.string :availability

      t.timestamps
    end
  end
end
