class RecommendController < ApplicationController
  def index
    # 過去に4以上の評価をしていて、現在余剰商品がある場合。
    @goodStarShopInSelfHistory = Array.new(ShopReview.createGoodStarShopInSelfHistory)
    # 全体として評価が高い順。
    @goodStarShopInAllHistory = Array.new(ShopReview.createGoodStarShopInAllHistory)
  end
  
end
