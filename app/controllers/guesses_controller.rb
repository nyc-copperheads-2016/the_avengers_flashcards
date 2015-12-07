post '/guesses' do
@round = Round.find_by(id: params[:round_id])
@card = Card.find_by(id: params[:card_id])
@guess = Guess.new(round_id: params[:round_id], card_id: params[:card_id], guess: params[:guess])
@next_card_id = @round.deck.cards.shuffle.sample.id
  if @guess.save  
    answer = params[:guess]
    if answer == @card.answer
      erb :'cards/correct'
    else
      erb :'cards/incorrect'
    end
  end
end