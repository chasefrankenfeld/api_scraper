class ItemsController < ApplicationController
  before_action :set_item, only: [:show]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    @average_cubic_weight = @items.average(:cubic_weight)
    if params[:category]
      @items = @items.where(category: params["category"])
      @average_cubic_weight = @items.average(:cubic_weight)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:category)
    end
end
