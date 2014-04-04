class EventsController < ApplicationController
  def index
    if params[:query]
    	@events = PgSearch.multisearch(params[:query]).collect(&:searchable)
    else
    	@events = Event.all
    end
  end

  def show
    @event = Event.find(params[:id])
    @likes = @event.likers(Member).count

  end

end