class CreateShopImage < ActiveRecord::Migration[5.1]
  def change
    create_table :shop_images do |t|
      t.string :image
      t.references :shop, foreign_key: true, index: true
    end
  end
end
