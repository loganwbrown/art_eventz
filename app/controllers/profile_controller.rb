class ProfileController < ApplicationController
  def index
  end

  def new
    @profile = Profile.new
  end

  def create 
    @profile = Profile.new(profile_params)
  end

  def update
     @profile = Profile.find(params[:id])
       if @profile.update_attributes(profile_params)
        flash[:success] = "changes have been made"
        redirect_to chef_path(@profile.id)
       else
        flash[:error] = "you are a failure and no one loves you"
        render :edit
       end
  end

  def edit
    @chef = Chef.find(params[:id])
  end

  private

  def profile_params
      params.require(:profile).permit(:name, :show, :speciality, :avatar)
  end
end
