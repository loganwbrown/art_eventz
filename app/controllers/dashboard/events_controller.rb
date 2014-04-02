class Dashboard::EventsController < Dashboard::DashboardController

	def index
    @events = current_member.events.all
	end

	def show
    @event = Event.find(params[:id])
    @event_photo = @event.event_photos.build

	end

	def new
    @event = Event.new
    @event_photo = EventPhoto.new
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:notice] = "event has been updated."
      redirect_to dashboard_event_path(@event.id)
    else
      flash[:error] = "There was a problem updating your form."
      render :edit
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Event has been Destroyed"
    redirect_to dashboard_events_path
  end

  

  def create
    @event = current_member.events.build(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to dashboard_event_path(@event.id), notice: 'Event was successfully created.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

private

  def event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :date, :time, :tagline, :address, :address2, :city, :state, :zip, :more_info, :website, :facebook, :application_form, :contact_name, :contact_email, event_photos_attributes: [:photo, :event_id, :id])
  end
end

