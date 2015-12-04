# These helper methods handle the current user with bcrypt and checks if the user is logged in or not, only implimentation thus far is in the layout file
helpers do

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!session[:user_id]
  end

end