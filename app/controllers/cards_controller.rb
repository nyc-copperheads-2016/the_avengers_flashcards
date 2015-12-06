get '/rounds/:id/cards/:card_id' do
  @round = Round.find_by(id: params[:id])
  card = Card.find_by(id: params[:card_id])
  @card = card
  erb :'cards/question'
end

post '/rounds/:id/cards/:card_id' do
  @round = Round.find_by(id: params[:id])
  @card = Card.find_by(id: params[:card_id])
  answer = params[:answer]

  if answer == @card.answer
    erb :'cards/correct'
  else
    erb :'cards/incorrect'
  end
end



# put '/cards/:id' do
#   @card = Card.find(params[:id])
#   if params[:answer] == @card.answer
#     redirect '/'
#   else
#     '/?errors=incorrect_username_or_password'
#   end
# end


