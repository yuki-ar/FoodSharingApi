class CreateCommitmentSpaceImages < ActiveRecord::Migration[5.1]
  def change
    create_table :commitment_space_images do |t|
      t.string :image
      t.references :commitment_space, foreign_key: true, index: true
    end
  end
end
