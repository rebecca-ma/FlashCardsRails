class DecksController < ApplicationController
  def new
    @deck = Deck.new
  end
  
  def create
    @deck = Deck.new(deck_params)
    if @deck.save
      redirect_to(@deck)
    else
      render 'new'
    end
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def add_remove_cards
    @deck = Deck.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:id])
    if @deck.update(deck_params)
      redirect_to(@deck)
    else
      render 'edit'
    end
  end
  
  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end
  
  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy

    redirect_to decks_path
  end

  private
    def deck_params
      params.require(:deck).permit(:description, card_ids: [])
    end
end
