
get '/sessions/new' do
  erb :'sessions/new'
end

delete '/' do
  session.clear
  redirect '/'
end


post '/sessions' do
  user = User.find_by(username: params[:username])
  if user && user.password == params[:password]
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/?errors=incorrect_username_or_password'
  end
end

