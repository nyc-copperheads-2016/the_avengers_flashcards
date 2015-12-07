post '/guesses' do

@round = Round.find_by(id: params[:round_id])
@card = Card.find_by(id: params[:card_id])
@guess = Guess.new(round_id: params[:round_id], card_id: params[:card_id], guess: params[:guess])
session[:counter] += 1
@next_card_id = session[:card_ids][session[:counter]]
  if @guess.save  
    answer = params[:guess]
    if answer == @card.answer
      erb :'cards/correct'
    else
      erb :'cards/incorrect'
    end
  end
end