get '/decks' do
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:id' do
 @deck = Deck.find(params[:id])
 sessions[:round] = Round.create(deck_id: params[:id])
 erb :"rounds/new"

end




