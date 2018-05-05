class UshijimasController < ApplicationController

	# before_action :forbid_login_user, {only: [:top]}

	def top
		@user = User.new

	end

	def show
		@event = Event.find(params[:id])
		@posts = Post.where(event_id: @event.id).order(post_date: :asc)



	end
end
