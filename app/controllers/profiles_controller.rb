class ProfilesController < ApplicationController
	
  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
    @art_photos = @profile.art_photos
  end

end

