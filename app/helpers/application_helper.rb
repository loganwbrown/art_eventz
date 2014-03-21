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
end
