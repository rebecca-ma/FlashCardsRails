Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cards, :decks

  get '/cards/add_to_decks/:id',
      to: 'cards#add_to_decks',
      as: 'add_to_decks'
  get '/decks/add_remove_cards/:id',
      to: 'decks#add_remove_cards',
      as: 'add_remove_cards'
  root 'welcome#index'
end
