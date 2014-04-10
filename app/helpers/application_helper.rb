module ApplicationHelper

	def user_logged_in?
 	  member_signed_in?
  end

  def resource_name
    :member
  end
  def resource
    @member ||= Member.new
  end
 	def devise_mapping
    @devise_mapping ||= Devise.mappings[:member]
  end
  private
  def current_user
    @current_member_log ||= Member.find(session[:member_id]) if session[:member_id]
  end
end
