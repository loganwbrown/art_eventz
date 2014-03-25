class StaticPagesController < ApplicationController

  def index

  if signed_in?
      redirect_to dashboard_profiles_path
    end
  end

  def about 

  end

  
end
