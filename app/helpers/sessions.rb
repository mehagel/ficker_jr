helpers do

  def current_user
    user = User.find_by_id(session[:user_id])
 
    # if session[:user_id]
    #   @current_user ||= User.find_by_id(session[:user_id].to_i)
    # end
  end
end