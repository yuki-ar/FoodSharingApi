class ShopImage < ApplicationRecord
  belongs_to :shop
  mount_uploader :image, ShopImageUploader
end
