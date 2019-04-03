class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.integer :owner_rating
      t.integer :borrower_rating

      t.timestamps
    end
  end
end
