class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :check_user_ownership, only: [:edit, :destroy]
    
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
    
    def destroy
      @item.destroy
      redirect_to action: :index
    end
    
    
    
        
  private
  def item_params
    params.require(:item).permit(:image, :item_name, :description, :category_id, :condition_id, :shipping_charge_id, :prefecture_id, :delivery_date_id, :price).merge(user_id: current_user.id)
  end  

  def set_item
    @item = Item.find(params[:id])
  end

  def check_user_ownership
    unless current_user == @item.user
      redirect_to action: :index
    end
  end
end