class RankingsController < ApplicationController

  def have
    @item_id = Have.group(:item_id).order("count_item_id DESC").limit(10).count(:item_id).keys
    @items = Item.find(@item_id).sort_by{|o| @item_id.index(o.id)}   
  end
  
  def want
    @item_id = Want.group(:item_id).order("count_item_id DESC").limit(10).count(:item_id).keys
    @items = Item.find(@item_id).sort_by{|o| @item_id.index(o.id)}
  end
  
end
