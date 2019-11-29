CommitmentSpaceImage.destroy_all
CommitmentSpace.destroy_all
PurchasedHistory.destroy_all
ShopReview.destroy_all
con = ActiveRecord::Base.connection
con.execute("ALTER TABLE commitment_space_images AUTO_INCREMENT = 1;")
con.execute("ALTER TABLE commitment_spaces AUTO_INCREMENT = 1;")
con.execute("ALTER TABLE purchased_histories AUTO_INCREMENT = 1;")
con.execute("ALTER TABLE shop_reviews AUTO_INCREMENT = 1;")


ItemImage.destroy_all
Item.destroy_all
con = ActiveRecord::Base.connection
con.execute("ALTER TABLE item_images AUTO_INCREMENT = 1;")
con.execute("ALTER TABLE items AUTO_INCREMENT = 1;")

ShopImage.destroy_all
Shop.destroy_all
con = ActiveRecord::Base.connection
con.execute("ALTER TABLE shop_images AUTO_INCREMENT = 1;")
con.execute("ALTER TABLE shops AUTO_INCREMENT = 1;")



def mizunoLab
  shop = Shop.new(name: "水野研究室", description: "SampleDescription", genre: 1, averagePrice: 1, businessHoursStart: 1, businessHoursEnd: 1, adress: "京都府京都市北区紫竹大門町", url: "http://example.com", email: "mizuno@gmail.com", password: "00000000")
  3.times do |n|
    shopImage = shop.shopImages.build 
    File.open("app/assets/images/sampleShop#{n+1}.jpg") do |f|
      shopImage.image = f
    end
    shopImage.save!
  end
  
  item = Item.new(name: "春菊のケークサクレのフリー画像（写真）", description: "この写真の画像は無料で使えるぱくたそオリジナルのフリー素材です。", status: 1, shop_id: 1)
  3.times do |n|
    itemImage = item.itemImages.build
    File.open("app/assets/images/sampleFood#{n+1}.jpg") do |f|
      itemImage.image = f
    end
    itemImage.save!
  end
  
  item = Item.new(name: "色違いのマカロンのフリー画像（写真）", description: "この写真の画像は無料で使えるぱくたそオリジナルのフリー素材です。", status: 1, shop_id: 1)
  3.times do |n|
    itemImage = item.itemImages.build
    File.open("app/assets/images/macaron#{n+1}.jpg") do |f|
      itemImage.image = f
    end
    itemImage.save!
  end
  
  
  item = Item.new(name: "ドーナッツのフリー画像（写真）", description: "この写真の画像は無料で使えるぱくたそオリジナルのフリー素材です。", status: 1, shop_id: 1)
  3.times do |n|
    itemImage = item.itemImages.build
    File.open("app/assets/images/donut#{n+1}.jpg") do |f|
      itemImage.image = f
    end
    itemImage.save!
  end
  
  
  commitmentSpaceContent = "栄町店で大人気の誕生日会でパシャリ♪おいしい料理とオシャレな空間に包まれて、みんなでワイワイ楽しくおしゃべり☆かわいい猿の人形も乱入！ぜひ、一緒に可愛い猿の人形と写真を撮ってください！サプライズ演出も承ります。お気軽にご相談ください★"
  space = CommitmentSpace.create(content: commitmentSpaceContent, shop_id: 1)
  2.times do |n|
    spaceImages = CommitmentSpaceImage.new(commitment_space_id: space.id)
    File.open("app/assets/images/sampleShop#{n+1}.jpg") do |f|
      spaceImages.image = f
    end
    spaceImages.save!
  end

  commitmentSpaceContent = "省略"
  space = CommitmentSpace.create(content: commitmentSpaceContent, shop_id: 1)
  2.times do |n|
    spaceImages = CommitmentSpaceImage.new(commitment_space_id: space.id)
    File.open("app/assets/images/sampleShop#{n+1}.jpg") do |f|
      spaceImages.image = f
    end
    spaceImages.save!
  end
  
end

def other1Lab
  shop = Shop.new(name: "他の研究室", description: "SampleDescription", genre: 1, averagePrice: 1, businessHoursStart: 1, businessHoursEnd: 1, adress: "京都府京都市北区紫竹大門町", url: "http://example.com", email: "otherlab@gmail.com", password: "00000000")
  3.times do |n|
    shopImage = shop.shopImages.build 
    File.open("app/assets/images/sampleShop#{n+1}.jpg") do |f|
      shopImage.image = f
    end
    shopImage.save!
  end
  
  item = Item.new(name: "ドーナッツのフリー画像（写真）", description: "この写真の画像は無料で使えるぱくたそオリジナルのフリー素材です。", status: 1, shop_id: 2)
  3.times do |n|
    itemImage = item.itemImages.build
    File.open("app/assets/images/donut#{n+1}.jpg") do |f|
      itemImage.image = f
    end
    itemImage.save!
  end

  item = Item.new(name: "春菊のケークサクレのフリー画像（写真）", description: "この写真の画像は無料で使えるぱくたそオリジナルのフリー素材です。", status: 1, shop_id: 2)
  3.times do |n|
    itemImage = item.itemImages.build
    File.open("app/assets/images/sampleFood#{n+1}.jpg") do |f|
      itemImage.image = f
    end
    itemImage.save!
  end

  item = Item.new(name: "色違いのマカロンのフリー画像（写真）", description: "この写真の画像は無料で使えるぱくたそオリジナルのフリー素材です。", status: 1, shop_id: 2)
  3.times do |n|
    itemImage = item.itemImages.build
    File.open("app/assets/images/macaron#{n+1}.jpg") do |f|
      itemImage.image = f
    end
    itemImage.save!
  end

  commitmentSpaceContent = "栄町店で大人気の誕生日会でパシャリ♪おいしい料理とオシャレな空間に包まれて、みんなでワイワイ楽しくおしゃべり☆かわいい猿の人形も乱入！ぜひ、一緒に可愛い猿の人形と写真を撮ってください！サプライズ演出も承ります。お気軽にご相談ください★"
  space = CommitmentSpace.create(content: commitmentSpaceContent, shop_id: 2)
  2.times do |n|
    spaceImages = CommitmentSpaceImage.new(commitment_space_id: space.id)
    File.open("app/assets/images/sampleShop#{n+1}.jpg") do |f|
      spaceImages.image = f
    end
    spaceImages.save!
  end

  commitmentSpaceContent = "省略"
  space = CommitmentSpace.create(content: commitmentSpaceContent, shop_id: 2)
  2.times do |n|
    spaceImages = CommitmentSpaceImage.new(commitment_space_id: space.id)
    File.open("app/assets/images/sampleShop#{n+1}.jpg") do |f|
      spaceImages.image = f
    end
    spaceImages.save!
  end

end

def other2Lab
  shop = Shop.new(name: "Sample Shop From DB", description: "SampleDescription", genre: 1, averagePrice: 1, businessHoursStart: 1, businessHoursEnd: 1, adress: "京都府京都市北区紫竹大門町", url: "http://example.com", email: "other2lab@gmail.com", password: "00000000")
  3.times do |n|
    shopImage = shop.shopImages.build 
    File.open("app/assets/images/sampleShop#{n+1}.jpg") do |f|
      shopImage.image = f
    end
    shopImage.save!
  end

  item = Item.new(name: "色違いのマカロンのフリー画像（写真）", description: "この写真の画像は無料で使えるぱくたそオリジナルのフリー素材です。", status: 1, shop_id: 3)
  3.times do |n|
    itemImage = item.itemImages.build
    File.open("app/assets/images/macaron#{n+1}.jpg") do |f|
      itemImage.image = f
    end
    itemImage.save!
  end
  
  item = Item.new(name: "春菊のケークサクレのフリー画像（写真）", description: "この写真の画像は無料で使えるぱくたそオリジナルのフリー素材です。", status: 1, shop_id: 3)
  3.times do |n|
    itemImage = item.itemImages.build
    File.open("app/assets/images/sampleFood#{n+1}.jpg") do |f|
      itemImage.image = f
    end
    itemImage.save!
  end
  
  item = Item.new(name: "ドーナッツのフリー画像（写真）", description: "この写真の画像は無料で使えるぱくたそオリジナルのフリー素材です。", status: 1, shop_id: 3)
  3.times do |n|
    itemImage = item.itemImages.build
    File.open("app/assets/images/donut#{n+1}.jpg") do |f|
      itemImage.image = f
    end
    itemImage.save!
  end
  
  commitmentSpaceContent = "栄町店で大人気の誕生日会でパシャリ♪おいしい料理とオシャレな空間に包まれて、みんなでワイワイ楽しくおしゃべり☆かわいい猿の人形も乱入！ぜひ、一緒に可愛い猿の人形と写真を撮ってください！サプライズ演出も承ります。お気軽にご相談ください★"
  space = CommitmentSpace.create(content: commitmentSpaceContent, shop_id: 3)
  2.times do |n|
    spaceImages = CommitmentSpaceImage.new(commitment_space_id: space.id)
    File.open("app/assets/images/sampleShop#{n+1}.jpg") do |f|
      spaceImages.image = f
    end
    spaceImages.save!
  end

  commitmentSpaceContent = "省略"
  space = CommitmentSpace.create(content: commitmentSpaceContent, shop_id: 3)
  2.times do |n|
    spaceImages = CommitmentSpaceImage.new(commitment_space_id: space.id)
    File.open("app/assets/images/sampleShop#{n+1}.jpg") do |f|
      spaceImages.image = f
    end
    spaceImages.save!
  end
end

mizunoLab
other1Lab
other2Lab