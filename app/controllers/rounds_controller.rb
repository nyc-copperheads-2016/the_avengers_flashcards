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
  @card_id = session[:card_ids][0]

  if @round.save
    redirect "/rounds/#{@round.id}/cards/#{@card_id}"
  else
    '/?errors=Round not Saved'
  end
end

get '/rounds/:id' do
  @round = Round.find_by(id: params[:id])  #Should be in model?
  # @round.guesses.count
  @number_of_guesses = Guess.all.where(round_id: params[:id]).count
  @number_of_cards = @round.deck.cards.count
  @deck_name = @round.deck.name
  @guesses = Guess.all.where(round_id: params[:id]).take(@number_of_cards)
  @correct_first = 0

  @guesses.each do |guess|  #should be in model
    if guess.correct == 1
      @correct_first+= 1
    end
  end

  @round.update_attributes(correct_first_try: @correct_first)  #should be in /post route

  erb :'rounds/show'

end



