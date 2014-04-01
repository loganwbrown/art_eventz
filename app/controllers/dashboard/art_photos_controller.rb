class Dashboard::ArtPhotosController < Dashboard::DashboardController
  before_action :find_event

  def create
    @profile = ArtPhoto.new(photo: artphoto_params, profile_id: @profile.id)
    if @event_photo.save
      redirect_to dashboard_profile_path(@art_photo.profile_id)
    else 
    end
  end

  private

  def artphoto_params
    params.require(:art_photo).permit(:photo, :event_id)
  end

  def find_event
    @profile = Profile.find(params[:art_photo][:profile_id])
  end

end
