class PartiesController < ApplicationController
  def index
    @parties = Party.all
  end

  def show
    @party = Party.find(params[:id])
    @guests = (@party.male_count + @party.female_count).to_i
    @appetizer_calc = (@party.appetizer_course.to_i*1.25*@party.food_level*@guests).to_i
    @entree_calc = @party.entree_course.to_i*(@guests+((((@party.food_level-1).to_f)*0.15)*@party.male_count)+((((@party.food_level-1).to_f)*0.1)*@party.female_count)).to_i
    @dessert_calc = (@party.dessert_course.to_i*1.25*@party.food_level*@guests).to_i
    @alcohol_calc = @party.alcohol_drinks
    @nonalcohol_calc = (@guests).to_i
    @flatware_calc = @guests*((@party.appetizer_course.to_i*0.5)+@party.entree_course.to_i+(@party.dessert_course.to_i*0.5)).to_i

    @all_items = @party.shopping_lists.all
    @appetizer_shopping_items = @party.shopping_lists.joins(:item).where("items.category = 'Appetizer'")
    @entree_shopping_items = @party.shopping_lists.joins(:item).where("items.category = 'Entree'")
    @dessert_shopping_items = @party.shopping_lists.joins(:item).where("items.category = 'Dessert'")
    @alcohol_shopping_items = @party.shopping_items('Alcohol')
    @nonalcohol_shopping_items = @party.shopping_lists.joins(:item).where("items.category = 'Non-alcohol'")
    @flatware_shopping_items = @party.shopping_lists.joins(:item).where("items.category = 'Flatware'")
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new
    @party.name = params[:name]
    @party.date = Chronic.parse(params[:date])
    @party.duration = params[:duration]
    @party.male_count = params[:male_count]
    @party.female_count = params[:female_count]
    @party.food_level = params[:food_level]
    @party.drink_level = params[:drink_level]
    @party.budget = params[:budget]
    @party.appetizer_course = params[:appetizer_course]
    @party.entree_course = params[:entree_course]
    @party.dessert_course = params[:dessert_course]
    @party.alcohol_course = params[:alcohol_course]

    if @party.save
      redirect_to "/parties", :notice => "Party created successfully."
    else
      render 'new'
    end
  end

  def edit
    @party = Party.find(params[:id])
  end

  def update
    @party = Party.find(params[:id])

    @party.name = params[:name]
    @party.date = params[:date]
    @party.duration = params[:duration]
    @party.male_count = params[:male_count]
    @party.female_count = params[:female_count]
    @party.food_level = params[:food_level]
    @party.drink_level = params[:drink_level]
    @party.budget = params[:budget]
    @party.appetizer_course = params[:appetizer_course]
    @party.entree_course = params[:entree_course]
    @party.dessert_course = params[:dessert_course]
    @party.alcohol_course = params[:alcohol_course]

    if @party.save
      redirect_to "/parties", :notice => "Party updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @party = Party.find(params[:id])

    @party.destroy

    redirect_to "/parties", :notice => "Party deleted."
  end
end
