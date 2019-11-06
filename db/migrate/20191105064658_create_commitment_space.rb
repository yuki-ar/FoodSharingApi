class CreateCommitmentSpace < ActiveRecord::Migration[5.1]
  def change
    create_table :commitment_spaces do |t|
      t.string :content
      t.references :shop, foreign_key: true, index: true
    end
  end
end
