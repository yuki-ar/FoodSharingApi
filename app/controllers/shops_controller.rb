class ShopsController < ApplicationController

  def index
    @shops = Shop.includes(:items).where(items: {status: "sell"})
  end

  def show
    @shop = Shop.find(params[:id])
  end
end