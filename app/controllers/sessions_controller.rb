class SessionsController < ApplicationController
  def create
    @user = Member.find_or_create_for_facebook(facebook_hash)
    if @user.persisted?
			sign_in @user, event: :authentication
			redirect_to root_path, notice: "welcome to the family"
		else
			flash[:alert] = "ah nu beached bru"
			redirect_to root_path
		end
  end

  protected
	def facebook_hash
		{}.tap do |auth|
			auth[:email] = request.env['omniauth.auth']['info']['email']
			auth[:token] = request.env['omniauth.auth']['credentials']['token']
			auth[:oauth_expires_at] = request.env['omniauth.auth']['']
			auth[:provider] = "facebook"
			auth[:uid] = request.env['omniauth.auth']['uid']
		end
	end
end