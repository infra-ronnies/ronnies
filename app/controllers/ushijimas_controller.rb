class UshijimasController < ApplicationController
	# before_action :forbid_login_user, {only: [:top]}
  def top
  	@user = User.new

  end

  def show
  	@event = Event.find(params[:id])
  	@users = @event.event_users
  end
end
