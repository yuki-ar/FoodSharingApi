class CommitmentSpace < ApplicationRecord
  has_many :commitmentSpaceImages
  belongs_to :shop
end
