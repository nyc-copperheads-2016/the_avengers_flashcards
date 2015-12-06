get '/' do
  erb :"rounds/index"
end

get '/rounds/new' do
  erb :"rounds/new"
end

post '/rounds' do
  @round = Round.new(deck_id: params[:deck_id], user_id: session[:user_id])
  @card = @round.deck.cards.shuffle.sample.id

  if @round.save
    redirect "/rounds/#{@round.id}/cards/#{@card}"
  else
    '/?errors=Round not Saved'
  end
end




