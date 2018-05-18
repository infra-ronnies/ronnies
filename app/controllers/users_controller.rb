class UsersController < ApplicationController
	protect_from_forgery :except => [:login]
	before_action :forbid_login_user, {only: [:create]}
	before_action :authenticate_user, {only: [:show]}

	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to user_path(user)
		else
			flash[:notice] = "NameとPasswordを正しく入力してください"
			redirect_to root_path
		end
	end

	def eventlogin
		@event = Event.find_by(event_password: params[:password])
		if @event.presence
			redirect_to event_posts_path(@event.id)
		else
			flash[:notice] = "Passwordを正しく入力してください"
			redirect_to user_path(current_user.id)
		end
	end

	def login
		@user = User.find_by(name: params[:name], password: params[:password])
		if @user
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
			flash[:notice] = "NameとPasswordを正しく入力してください"
			redirect_to root_path
		end
	end

	def logout
		session[:user_id] = nil
		redirect_to root_path
	end

	def show
		@user = User.find_by(id: @current_user.id)
		@eventuser = EventUser.where(user_id: @current_user.id)
		if @eventuser.count == 0
			gon.count = 0
		else
			gon.count = 1
		end

	end

	def update
		user = User.find_by(id: @current_user.id)
		user.update(user_params)
		user.save

		redirect_to user_path(@current_user.id)
	end

	private

	def user_params
		params.require(:user).permit(:name, :password, :profile_image, :one_talk)
	end

end



