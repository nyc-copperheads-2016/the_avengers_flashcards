post '/guesses' do

@round = Round.find_by(id: params[:round_id])
@card = Card.find_by(id: params[:card_id])
@guess = Guess.new(round_id: params[:round_id], card_id: params[:card_id], guess: params[:guess])
  if @guess.save
    answer = params[:guess]
    if answer == @card.answer
      @guess.update_attributes(correct: 1)
      session[:card_ids].shift
      if session[:card_ids].length == 0
      	redirect "/rounds/#{@round.id}"
      else
	    @next_card_id = session[:card_ids][0]
	    erb :'cards/correct'
  	  end
    else
      id = session[:card_ids].shift
      session[:card_ids] << id
      @next_card_id = session[:card_ids][0]
      erb :'cards/incorrect'
    end
  end
end
