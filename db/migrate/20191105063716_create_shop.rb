class CreateShop < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :description
      t.integer :averagePrice
      t.integer :businessHoursStart
      t.integer :businessHoursEnd
      t.timestamps
    end
  end
end
