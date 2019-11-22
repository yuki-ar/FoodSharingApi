class ReviewsController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @review = ShopReview.new
  end

  def create
    ShopReview.create(permit_review)
  end

  private
  def permit_review
    params.require(:shop_review).permit(:reviewStar, :review).merge(user_id: 1, shop_id: params[:shop_id])
    # TODO user_idが固定
  end
end
