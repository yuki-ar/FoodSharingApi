class CommitmentSpaceImage < ApplicationRecord
  belongs_to :commitment_space
  mount_uploader :image, CommitmentSpacesImageUploader
end
