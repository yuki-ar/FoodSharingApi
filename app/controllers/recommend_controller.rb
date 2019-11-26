class RecommendController < ApplicationController
  # インスタンス変数におすすめを入れてviewで分岐
  def index
    # 過去に4以上の評価をしていて、現在余剰商品がある場合。
    @goodStarShopInSelfHistory = Array.new(ShopReview.createGoodStarShopInSelfHistory)
  end

  
end
