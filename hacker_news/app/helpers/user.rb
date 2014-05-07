def current_user
  User.find(session[:id]) if loggedin?
end

def logged_in?
  !!session[:id]
end
