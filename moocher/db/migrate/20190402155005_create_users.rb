class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :user_rating
      t.integer :renter_rating

      t.timestamps
    end
  end
end
