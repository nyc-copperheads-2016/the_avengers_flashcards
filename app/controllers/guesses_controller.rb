post '/guesses' do
  @round = Round.find_by(id: params[:round_id])
  @card = Card.find_by(id: params[:card_id])
  #@guess = Guess.new(round_id: params[:round_id], card_id: params[:card_id], guess: params[:guess])
  # build your guess object as an association of either the round or card.  In this
  # case I'd say round...
  @guess = @round.guesses.build(card: @card, guess: params[:guess])

  if @guess.save
    answer = params[:guess]
    # The controller should not know how to match a guess.  The Card model
    # should have that responsibility.
    if @card.is_correct?(params[:guess])
    # if answer.downcase == @card.answer.downcase

    # Same goes for updating the guess object... let it update itself.  Controllers
    # should not know about the internals of the models they are working with.
    # @guess.mark_correct!
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
  else
    '/?errors=Guess not Saved'
  end
end
