CommitmentSpaceImage.destroy_all
CommitmentSpace.destroy_all
con = ActiveRecord::Base.connection
con.execute("ALTER TABLE commitment_space_images AUTO_INCREMENT = 1;")
con.execute("ALTER TABLE commitment_spaces AUTO_INCREMENT = 1;")

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

shop = Shop.new(name: "水野研", description: "SampleDescription", averagePrice: 1, businessHoursStart: 1, businessHoursEnd: 1)
3.times do |n|
  shopImage = shop.shopImages.build 
  File.open("app/assets/images/sampleShop#{n+1}.jpg") do |f|
    shopImage.image = f
  end
  shopImage.save!
end


item = Item.new(name: "春菊のケークサクレのフリー画像（写真）")
3.times do |n|
  itemImage = item.itemImages.build
  File.open("app/assets/images/sampleFood#{n+1}.jpg") do |f|
    itemImage.image = f
  end
  itemImage.save!
end


commitmentSpaceContent = "栄町店で大人気の誕生日会でパシャリ♪おいしい料理とオシャレな空間に包まれて、みんなでワイワイ楽しくおしゃべり☆かわいい猿の人形も乱入！ぜひ、一緒に可愛い猿の人形と写真を撮ってください！サプライズ演出も承ります。お気軽にご相談ください★"
Space = CommitmentSpace.create(content: commitmentSpaceContent, shop_id: 1)
2.times do |n|
  SpaceImages = CommitmentSpaceImage.new(commitment_space_id: Space.id)
  File.open("app/assets/images/sampleShop#{n+1}.jpg") do |f|
    SpaceImages.image = f
  end
  SpaceImages.save!
end
