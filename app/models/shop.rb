class Shop < ApplicationRecord
  has_many :shopImages
  enum averagePrice: {
    "0~500":1, "501~1000":2, "1001~1500":3
  }

  # 出店機能未実装のためこちらも仮置き
  enum businessHoursStart: {
    "16:00":1
  }

  # 出店機能未実装のためこちらも仮置き
  enum businessHoursStart: {
    "19:00":1
  }
end