# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

shuffleDeck = ->
  $(window).card_side = 0
  $(window).curr_card = 0
  
  cards = $('datadiv').data('cards')
  i = cards.length
  $(window).cards = cards unless i > 0
  
  while --i
    j = Math.floor(Math.random() * (i+1))
    [cards[i], cards[j]] = [cards[j], cards[i]]
  
displayCard = ->
  cards = $(window).cards
  index = $(window).curr_card
  if $(window).card_side is 0
    to_display = cards[index].front
  else
    to_display = cards[index].back
  $('card_display').contents = to_display

displayPrev = ->
  if $(window).curr_card > 0
    $(window).curr_card -= 1
  displayCard()

displayNext = ->
  if $(window).curr_card < $(window).cards.length
    $(window).curr_card += 1
  displayCard()

flip = ->
  $(window).card_side = ($(window).card_side + 1) % 2
