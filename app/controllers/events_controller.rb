class EventsController < ApplicationController
  def new
  	event = Event.new(event_params)
  	event.save
  	redirect_to event_path(event.id)
  end

  def edit
  	@event = Event.find(params[:id])
  end
end
