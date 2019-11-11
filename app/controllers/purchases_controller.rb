class PurchasesController < ApplicationController
  def index
    Item.find(params[:format]).update(status: 2)
  end
end
