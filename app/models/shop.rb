class Shop < ApplicationRecord
  has_many :shopImages
  has_many :items
  has_many :purchased_histories

  enum averagePrice: {
    "0~500":1, "501~1000":2, "1001~1500":3
  }

  # 出店機能未実装のためこちらも仮置き
  enum businessHoursStart: {
    "16:00":1
  }

  # 出店機能未実装のためこちらも仮置き
  enum businessHoursEnd: {
    "19:00":1
  }

  enum genre: {
    "洋菓子":1
  }
end