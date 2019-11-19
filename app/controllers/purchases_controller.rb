class PurchasesController < ApplicationController
  def index
    PurchasedHistory.create(shop_id: params[:shop], item_id: params[:item])
    Item.find(params[:item]).update(status: 2)
  end
end
