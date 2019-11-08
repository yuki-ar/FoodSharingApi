class AddStatusToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :status, :int, null: false
    add_reference :items, :shop, index: true
  end
end
