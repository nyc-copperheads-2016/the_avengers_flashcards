get '/' do
  erb :"rounds/index"
end

get '/rounds/new' do
  erb :"rounds/new"
end

post '/rounds' do
  @round = Round.new(deck_id: params[:deck_id], user_id: session[:user_id])

  if @round.save
    redirect "/rounds/#{@round.id}"
  else
    '/?errors=Round not Saved'
  end
end

get '/rounds/:id' do
  @round = Round.find_by(id: params[:id])
  # @deck = Deck.find_by(id: params[:deck_id])
  erb :"cards/question"
end







