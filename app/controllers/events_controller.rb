class EventsController < ApplicationController
  def new
  	event = Event.new(event_params)
  	event.save
  	redirect_to event_path(event.id)
  end

  def edit
  	@event = Event.find(params[:id])
  end
  def update
  	event = Event.find(params[:id])
  	event.update(event_params)
  	redirect_to event_path(event.id)
  end
end
