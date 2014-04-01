class StaticPagesController < ApplicationController
  respond_to :html, :json, :js



  def index
 		 if signed_in?
      redirect_to dashboard_index_path
    end
  end

  def about 
  end

  def contact
  end
  
  def calendar
    @events = Event.all
    respond_with(@events)
  end 

  def newsletter_signup
    if request.post?
      MemberMailer.newsletter(params).deliver
    end
  end
end
