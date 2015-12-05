# I copied this from yesterdays challenge so all the code in this file works

# Not necessary because the form is placed directly in the main layout, if it isn't visible it's because of the hidden class i added to the form just remove it for it to work.
# get '/sessions/new' do
# erb :'sessions/new'
# end

# this is the route for the logout button, check the form in the layout.erb if it needs to be updated
delete '/' do
  session.clear
  redirect '/'
end

# this is the logout route
post '/' do
  user = User.find_by(username: params[:username])
  if user && user.password == params[:password]
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/?errors=incorrect_username_or_password'
  end
end

