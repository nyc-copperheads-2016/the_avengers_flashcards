get '/decks' do
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:id' do
 @deck = Deck.find(params[:id])
  # NONONONONONO
  # Dont do this.  Even if you didnt use it.
  #
  # We only put small bits of data in the session.  Storing the round id MIGHT have
  # been ok.  I think you dont need to save this state though.
  sessions[:round] = Round.create(deck_id: params[:id])
 erb :"rounds/new"

end




