class LikesController < ApplicationController
  def create
    @event = Event.find(params[:id])
    current_member.like!(@event) 
    redirect_to event_path
  end
end