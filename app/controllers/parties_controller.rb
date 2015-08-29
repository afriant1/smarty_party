class PartiesController < ApplicationController
  def index
    #@parties = Party.all
    #@parties = Party.where(:user_id => current_user.id)
    @parties = current_user.parties
  end

  def show
    @party = Party.find(params[:id])
    @guests = (@party.male_count + @party.female_count).to_i

    @appetizer_calc = @party.appetizer_pieces
    @entree_calc = @party.entree_meals
    @dessert_calc = @party.dessert_pieces
    @alcohol_calc = @party.alcohol_drinks
    @nonalcohol_calc = @party.nonalcohol_drinks
    @flatware_calc = @party.flatware_sets

    @all_items = @party.shopping_lists.all
    @appetizer_shopping_items = @party.shopping_items('Appetizer')
    @entree_shopping_items = @party.shopping_items('Entree')
    @dessert_shopping_items = @party.shopping_items('Dessert')
    @nonalcohol_shopping_items = @party.shopping_items('Non-alcohol')
    @alcohol_shopping_items = @party.shopping_items('Alcohol')
    @flatware_shopping_items = @party.shopping_items('Flatware')
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
      @guest = Guest.new
      @guest.user_id = current_user.id # get a current_user
      @guest.party_id = @party.id
      @guest.host = true
      @guest.save
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
        redirect_to("/parties/#{@party.id}")
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
