class ItemsController < ApplicationController
  before_action :detectUserAgent

  def index
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
