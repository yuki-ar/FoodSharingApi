class ItemsController < ApplicationController
  before_action :detectUserAgent

  def index
    if params[:format].present?
      shopId = params[:format] 
      @items = Shop.find(shopId).items
    else
      @items = Item.all
    end
  end

  def show
    @item = Item.find(params[:id])
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
