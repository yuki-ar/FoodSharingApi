class ShopReview < ApplicationRecord
  belongs_to :shop

  def self.createGoodStarShopInSelfHistory
    @goodStarShopInSelfHistory = []
    # TODO user_idが固定
    ShopReview.where(user_id: 1, reviewStar: 4..Float::INFINITY).order('id DESC'). each do |ph|
      @goodStarShopInSelfHistory << ph.shop
    end
    @goodStarShopInSelfHistory.uniq!
    @goodStarShopInSelfHistory = deleteShopIfFoodIsEmpty(@goodStarShopInSelfHistory)
    return @goodStarShopInSelfHistory
  end

  def self.createGoodStarShopInAllHistory
    @goodStartInAllHistory = []
    ShopReview.where(reviewStar: 4..Float::INFINITY).order('id DESC'). each do |ph|
      @goodStartInAllHistory << ph.shop
    end
    @goodStartInAllHistory.uniq!
    @goodStartInAllHistory = deleteShopIfFoodIsEmpty(@goodStartInAllHistory)
    return @goodStartInAllHistory
  end

  # private

  def self.deleteShopIfFoodIsEmpty(shops)
    shops.each_with_index do |shop, i|
      if remainingFoodNil?(shop)
        shops.delete_at(i)
      end
    end
    return shops
  end

  def self.remainingFoodNil?(shop)
    if Item.where(shop_id: shop.id, status: 1).blank?
      return true
    else
      return false
    end
  end

  private_class_method :remainingFoodNil?
  private_class_method :deleteShopIfFoodIsEmpty

end
