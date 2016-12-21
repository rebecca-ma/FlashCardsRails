class CreateCardsAndDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.text :front
      t.text :back
      t.timestamps
    end
    
    create_table :decks do |t|
      t.string :description
      t.timestamps
    end
    
    create_table :cards_decks, id: false do |t|
      t.belongs_to :card
      t.belongs_to :deck
    end
  end
end
