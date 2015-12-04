get '/'
  redirect ('/decks')
end

get '/decks'
  erb :'decks/index'
end

