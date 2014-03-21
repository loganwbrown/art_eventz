class StaticPagesController < ApplicationController
	layout 'homepage'

  def index
  	if signed_in?
      redirect_to dashboard_events_path, notice: "thanks for signing your soul away!"
    end
  end
  def about 

  end

  
end
