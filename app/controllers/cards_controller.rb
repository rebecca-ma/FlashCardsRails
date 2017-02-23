class CardsController < ApplicationController
  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to(@card)
    else
      render 'new'
    end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def add_to_decks
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])
    if @card.update(card_params)
      redirect_to(@card)
    else
      render 'edit'
    end
  end

  def show
    @card = Card.find(params[:id])
  end

  def index
    @cards = Card.all_by_alphabetical_front
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    redirect_to cards_path
  end

  private
    def card_params
      params.require(:card).permit(:front, :back, deck_ids: [])
    end
end
