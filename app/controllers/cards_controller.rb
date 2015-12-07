get '/rounds/:id/cards/:card_id' do
  @round = Round.find_by(id: params[:id])
  @card = Card.find_by(id: params[:card_id])
  erb :'cards/question'
end



