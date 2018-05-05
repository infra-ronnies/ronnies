class EventsController < ApplicationController
  def new
  	@event = Event.new(event_params)
  	@event.save
  end

  def create
  	event = Event.new(event_params)
  	if event.save
  		eventuser = EventUser.new(user_id: @current_user.id, event_id: event.id)
  		eventuser.save
  	end
  	redirect_to event_posts_path(event.id)
  end

  def edit
  	@event = Event.find(params[:id])
  end
  def update
  	event = Event.find(params[:id])
  	event.update(event_params)
  	redirect_to event_posts_path(event.id)
  end
  private
  def event_params
  	params.require(:event).permit(:event_name, :image, :event_password)
  end
end
