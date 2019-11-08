class Item < ApplicationRecord
  has_many :itemImages
  belongs_to :shop

  enum status: {
    sell:1, soldOut:2
  }
end
