class CreateShopReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :shop_reviews do |t|
      t.string :reviewStar, null: false
      t.string :review, null: false
      t.integer :user_id, foreign_key: true, index: true, null: false, default: 1
      t.references :shop, foreign_key: true, index: true, null: false
    end
  end
end
