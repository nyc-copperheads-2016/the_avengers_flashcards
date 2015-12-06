get '/' do
  erb :"rounds/index"
end

get '/rounds/new' do
  erb :"rounds/new"
end

post '/rounds' do
  @round = Round.new(deck_id: params[:deck_id], user_id: session[:user_id])
  @cards = @round.deck.cards.shuffle
  @next_card = @cards[0].id
  session[:cards] = @cards

  if @round.save
    redirect "/rounds/#{@round.id}/cards/#{@next_card}"
  else
    '/?errors=Round not Saved'
  end
end






