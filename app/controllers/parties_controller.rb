class PartiesController < ApplicationController
  def index
    @parties = Party.all
  end

  def show
    @party = Party.find(params[:id])
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
