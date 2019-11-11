class ItemsController < ApplicationController
  before_action :detectUserAgent

  def index
    if params[:format].present?
      shopId = params[:format] 
      @items = Shop.find(shopId).items
      @items = Item.where(["shop_id = ? and status = ?", shopId, "1"])
      @hiddenIosTitle = "#{Shop.find(shopId).name}の商品"
    else
      @items = Item.all
      @items = Item.where(status: 1)
    end
  end

  def show
    @item = Item.find(params[:id])
    @hiddenIosTitle = @item.name
  end

  private
  def detectUserAgent
      case request.user_agent
      when /iPad/
          request.variant = :tablet
      when /iPhone/
          request.variant = :mobile
      end
  end

end
