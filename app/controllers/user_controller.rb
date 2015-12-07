# I copied this from yesterdays challenge so all the code in this file works

# Not necessary because the form is placed directly in the main layout, if it isn't visible it's because of the hidden class i added to the form just remove it for it to work.
# get '/users/new' do
#   erb :'users/new'
# end

# this is the login route
post '/users' do
  user = User.new(params)
  if user.save
    redirect '/'
  else
    redirect'/errors=couldnt_create_login'
  end
end

get '/users/new' do
  erb :'users/new'
end

get '/users/:id' do 
  @user = User.find(params[:id])
  @round = @user.rounds
  erb :'/users/show'
end
