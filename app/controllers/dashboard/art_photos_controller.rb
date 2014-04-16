class Dashboard::ArtPhotosController < Dashboard::DashboardController
  before_action :find_profile

  def create
    @art_photo = @profile.art_photos.build(artphoto_params)
    if @art_photo.save
      flash[:notice] = "Image has been uploaded." 
      redirect_to dashboard_profile_path(@art_photo.profile_id)
    else 

    end
  end

  private

  def artphoto_params
    params.require(:art_photo).permit(:photo, :profile_id)
  end

  def find_profile
    @profile = Profile.find(params[:profile_id])
  end

end
