get '/' do
  erb :"rounds/index"
end

get '/rounds/new' do
  erb :"rounds/new"
end

post '/rounds' do
  @round = Round.new(deck_id: params[:deck_id], user_id: session[:user_id])
  unshuffled_deck = @round.deck
  session[:card_ids] = Deck.shuffle(unshuffled_deck)
  session[:counter] = 0
  @card_id = session[:card_ids][session[:counter]]

  if @round.save
    redirect "/rounds/#{@round.id}/cards/#{@card_id}"
  else
    '/?errors=Round not Saved'
  end
end




