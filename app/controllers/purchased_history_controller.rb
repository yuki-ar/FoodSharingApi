class PurchasedHistoryController < ApplicationController
  def index
    # @histories = PurchasedHistory.where(user_id: 1).order(id: "DESC")
    # @shops = Shop.includes(:purchased_histories).where(purchased_histories: {user_id: 1}).order(id: "DESC")
    @shops = PurchasedHistory.where(user_id: 1).order(id: "DESC")
  end

  def show
    @shop = Shop.find(params[:id])
  end
end
