class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit]
  before_action :set_item, only: [:show, :edit, :update]
    
    def index
      @items = Item.order("created_at DESC")
    end

    def new
      @item = Item.new
    end

    def create
      @item = Item.new(item_params)
        if @item.save
          redirect_to root_path
        else 
          render :new, status: :unprocessable_entity
        end
        end
    
    def show
    end

    def update
      if @item.update(item_params)
        redirect_to item_path
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def edit
      render :edit
    end
    
        
  private
  def item_params
    params.require(:item).permit(:image, :item_name, :description, :category_id, :condition_id, :shipping_charge_id, :prefecture_id, :delivery_date_id, :price).merge(user_id: current_user.id)
  end  

  def set_item
    @item = Item.find(params[:id])
  end
end  
