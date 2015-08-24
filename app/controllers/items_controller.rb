class ItemsController < ApplicationController
  def index
    @items = Item.all
    @appetizers = Item.where(category: ["Appetizer"])
    @entrees = Item.where(category: ["Entree"])
    @desserts = Item.where(category: ["Dessert"])
    @beverages = Item.where(category: ["Beverage"])

  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.name = params[:name]
    @item.category = params[:category]
    @item.amount = params[:amount]
    @item.units = params[:units]
    @item.serving_size = params[:serving_size]
    @item.price = params[:price]

    if @item.save
      redirect_to "/items", :notice => "Item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    @item.name = params[:name]
    @item.category = params[:category]
    @item.amount = params[:amount]
    @item.units = params[:units]
    @item.serving_size = params[:serving_size]
    @item.price = params[:price]

    if @item.save
      redirect_to "/items", :notice => "Item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    redirect_to "/items", :notice => "Item deleted."
  end
end
