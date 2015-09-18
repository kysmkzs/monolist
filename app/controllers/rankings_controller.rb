class RankingsController < ApplicationController

  def have
    @items = Item.all.order("updated_at DESC").limit(10)
  end
  
  def want
    @items = Item.all.order("updated_at DESC").limit(10)
  end
  
end
