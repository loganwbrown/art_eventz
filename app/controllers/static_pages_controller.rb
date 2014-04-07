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

  def contact
    @contact = Contact.new
    if request.post?
    @contact.assign_attributes(contact_params)
      if @contact.save
      redirect_to contact_path, notice: "we will get back to you soon"
    else
      flash[:alert] = "oops"
      render :contact

      end
    end
  end 

  def tos
  end

  def newsletter_signup
    if request.post?
      MemberMailer.newsletter(params).deliver
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :question)
  end
end

