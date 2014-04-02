class Dashboard::EventPhotosController < Dashboard::DashboardController
  before_action :find_event

  def create
    @event_photo = @event.event_photos.build(eventphoto_params)
    if @event_photo.save
      redirect_to dashboard_event_path(@event_photo.event_id)

    else 
      raise @event_photo.errors.inspect
    end
  end

  private

  def eventphoto_params
    params.require(:event_photo).permit(:photo, :event_id)
  end

  def find_event
    @event = Event.find(params[:event_id])
  end

end
