# get '/rounds/:id/cards'
#   @deck = #round.decks.shuffle
#   @card = @deck[0]

#   redirect ('rounds/:id/cards/:card_id')
# end


# @card = @round.deck.cards.shuffle.sample.id


get '/rounds/:id/cards/:card_id' do
  @round = Round.find_by(id: params[:id])
  @card = Card.find_by(id: params[:card_id])
  erb :'cards/question'
end

post '/rounds/:id/cards/:card_id' do
  @round = Round.find_by(id: params[:id])
  @card = Card.find_by(id: params[:card_id])
  answer = params[:answer]

  if answer == @card.answer
    erb :'cards/correct'
  else
    erb :'cards/incorrect'
  end
end



