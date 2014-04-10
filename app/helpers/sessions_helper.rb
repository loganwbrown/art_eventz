module SessionsHelper


  def current_user=(user)
    @current_user ||= Member.find(session[:member_id]) if session[:member_id]
  end
end