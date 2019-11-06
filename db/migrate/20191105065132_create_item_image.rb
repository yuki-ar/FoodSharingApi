class CreateItemImage < ActiveRecord::Migration[5.1]
  def change
    create_table :item_images do |t|
      t.string :image
      t.references :item, foreign_key: true, index: true
    end
  end
end
