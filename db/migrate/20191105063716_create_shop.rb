class CreateShop < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :description
      t.integer :genre, null: false
      t.integer :averagePrice
      t.integer :businessHoursStart
      t.integer :businessHoursEnd
      t.string :adress, null: false
      t.string :url, null: false
      t.timestamps
    end
  end
end
