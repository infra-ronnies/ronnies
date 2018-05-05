class UshijimasController < ApplicationController

	# before_action :forbid_login_user, {only: [:top]}

	def top
		@user = User.new

	end

	def show
		@event = Event.find(params[:id])
		@users = []
		@event_users = @event.event_users
		@event_users.each do |event_user|
			@user = event_user.user
			@users << @user
		end
		@posts = @event.posts
	end
end
