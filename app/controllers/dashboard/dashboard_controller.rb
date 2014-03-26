class Dashboard::DashboardController < ApplicationController
  before_filter :authenticate_member!
	layout 'homepage'

end

	

