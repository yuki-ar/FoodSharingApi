module ApplicationHelper
  def shopStockNumber(shop)
    Item.where(shop_id: shop.id, status: 1).length
  end
end
