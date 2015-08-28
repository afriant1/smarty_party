class ShoppingListsController < ApplicationController
  def index
    @shopping_lists = ShoppingList.all
    @party_request_lists = @shopping_lists.where(:party_id => params[:id])
    @party = Party.find(params[:id])
  end

  def show
    @shopping_list = ShoppingList.find(params[:id])
    @appetizer_sum = @shopping_list.items.where(:category => "Appetizer").sum(:quantity)
  end

  def new
    @shopping_list = ShoppingList.new
    @party = Party.find(params[:id])
  end

  def create
    @shopping_list = ShoppingList.new
    @shopping_list.item_id = params[:item_id]
    @shopping_list.party_id = params[:party_id]
    @shopping_list.quantity = params[:quantity]
    @shopping_list.delegation_status = params[:delegation_status]
    @shopping_list.owner = params[:owner]
    @shopping_list.notes = params[:notes]

   if @shopping_list.save
      redirect_to :action => "index", :id => @shopping_list.party_id, :notice => "Item added to party."
    else
      render 'new'
    end
  end

  def edit
    @shopping_list = ShoppingList.find(params[:id])
    @party = @shopping_list.party_id
  end

  def update
    @shopping_list = ShoppingList.find(params[:id])

    @shopping_list.item_id = params[:item_id]
    @shopping_list.party_id = params[:party_id]
    @shopping_list.quantity = params[:quantity]
    @shopping_list.delegation_status = params[:delegation_status]
    @shopping_list.owner = params[:owner]
    @shopping_list.notes = params[:notes]

    if @shopping_list.save
      redirect_to :action => "index", :id => @shopping_list.party_id, :notice => "Item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @shopping_list = ShoppingList.find(params[:id])

    @shopping_list.destroy

    redirect_to :action => "index", :id => @shopping_list.party_id, :notice => "Item deleted."
  end
end
