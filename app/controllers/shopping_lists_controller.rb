class ShoppingListsController < ApplicationController
  def index
    @shopping_lists = ShoppingList.all
  end

  def show
    @shopping_list = ShoppingList.find(params[:id])
  end

  def new
    @shopping_list = ShoppingList.new
  end

  def create
    @shopping_list = ShoppingList.new
    @shopping_list.item_id = params[:item_id]
    @shopping_list.party_id = params[:party_id]
    @shopping_list.servings = params[:servings]
    @shopping_list.serving_price = params[:serving_price]
    @shopping_list.delegation_status = params[:delegation_status]
    @shopping_list.user_id = params[:user_id]
    @shopping_list.completion_status = params[:completion_status]

   if @shopping_list.save
      redirect_to "/shopping_lists", :notice => "Shopping list created successfully."
    else
      render 'new'
    end
  end

  def edit
    @shopping_list = ShoppingList.find(params[:id])
  end

  def update
    @shopping_list = ShoppingList.find(params[:id])

    @shopping_list.item_id = params[:item_id]
    @shopping_list.party_id = params[:party_id]
    @shopping_list.servings = params[:servings]
    @shopping_list.serving_price = params[:serving_price]
    @shopping_list.delegation_status = params[:delegation_status]
    @shopping_list.user_id = params[:user_id]
    @shopping_list.completion_status = params[:completion_status]

    if @shopping_list.save
      redirect_to "/shopping_lists", :notice => "Shopping list updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @shopping_list = ShoppingList.find(params[:id])

    @shopping_list.destroy

    redirect_to "/shopping_lists", :notice => "Shopping list deleted."
  end
end
