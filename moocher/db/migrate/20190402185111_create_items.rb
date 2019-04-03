class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.references :owner, index: true
      t.string :description
      t.string :image
      t.string :condition

      t.timestamps
    end
  end
end
