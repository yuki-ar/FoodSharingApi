class ShopsController < ApplicationController

  def index
    @shops = Shop.includes(:items).where(items: {status: "sell"})
  end

  def show
    @shop = Shop.find(params[:id])
    @hiddenIosTitle = @shop.name
    @shopAverageStar = ShopReview.where(shop_id: params[:id]).average(:reviewStar).to_i
  end
end