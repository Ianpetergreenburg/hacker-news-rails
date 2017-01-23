module SessionHelper

  def session_user
    User.find(session_user_id)
  end

  def session_user_id
    session[:user_id]
  end

end
