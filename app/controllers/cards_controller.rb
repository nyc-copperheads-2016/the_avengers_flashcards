get '/card/:id' do
  card = Card.find(params[:id])
  @card = card
  erb :'cards/question'
end

put '/cards/:id' do
  @card = Card.find(params[:id])
  if params[:answer] == @card.answer
    redirect '/'
  else
    '/?errors=incorrect_username_or_password'
  end
end