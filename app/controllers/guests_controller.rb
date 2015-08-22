class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new
    @guest.name = params[:name]
    @guest.email = params[:email]
    @guest.gender = params[:gender]
    @guest.party_id = params[:party_id]
    @guest.item_id = params[:item_id]

    if @guest.save
      redirect_to "/guests", :notice => "Guest created successfully."
    else
      render 'new'
    end
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])

    @guest.name = params[:name]
    @guest.email = params[:email]
    @guest.gender = params[:gender]
    @guest.party_id = params[:party_id]
    @guest.item_id = params[:item_id]

    if @guest.save
      redirect_to "/guests", :notice => "Guest updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @guest = Guest.find(params[:id])

    @guest.destroy

    redirect_to "/guests", :notice => "Guest deleted."
  end
end
