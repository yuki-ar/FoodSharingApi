class CreatePurchasedHistory < ActiveRecord::Migration[5.1]
  def change
    create_table :purchased_histories do |t|
      t.integer :user_id, foreign_key: true, index: true, null: false, default: 1
      t.integer :shop_id, foreign_key: true, index: true, null: false
      t.integer :item_id, index: true
      t.timestamps
    end
  end
end
