class ShopReview < ApplicationRecord
  belongs_to :shop

  def self.createGoodStarShopInSelfHistory
    @goodStarShopInSelfHistory = []
    # TODO user_idが固定
    ShopReview.where(user_id: 1, reviewStar: 4..Float::INFINITY).order('id DESC'). each do |ph|
      @goodStarShopInSelfHistory << ph.shop
    end
    @goodStarShopInSelfHistory.uniq!
      
    @goodStarShopInSelfHistory.each_with_index do |shop, i|
      if remainingFoodNil?(shop)
        @goodStarShopInSelfHistory.delete_at(i)
      end
    end
    return @goodStarShopInSelfHistory
  end

  def self.remainingFoodNil?(shop)
    if Item.where(shop_id: shop.id, status: 1).blank?
      return true
    else
      return false
    end
  end

  private_class_method :remainingFoodNil?

end
