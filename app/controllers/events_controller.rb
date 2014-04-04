class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @likes = @event.likers(Member).count
    @event_photos = @event.event_photos
  end
end