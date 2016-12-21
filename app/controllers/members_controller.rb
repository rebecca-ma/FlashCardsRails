class MembersController < ApplicationController
  def new_from_deck
    @deck = Deck.find(params[:id])
    @cards = Card.all
  end

  def new_from_card
    @card = Card.find(params[:id])
    @decks = Deck.all
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to deck_path(@member.deck_id)
    else
      redirect_back fallback_location: root_path
    end
  end
  
  def get_cards_from_deck


  def destroy
    @member = Member.find(params[:id])
    @member.destroy

    redirect_back fallback_location: root_path
  end

  private
    def member_params
      params.require(:member).permit(:deck_id, :card_id)
    end
end
