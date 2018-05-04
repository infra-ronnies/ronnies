class UsersController < ApplicationController
	before_action :forbid_login_user, {only: [:create]}

	def create
		@user = User.new(
      name: params[:name],
      password: params[:password]
    )
    if @user.save
    	session[:user_id] = @user.id
    	redirect_to user_path(@user)
    else
    	render root_path
    end
	end

	def show
		puts @current_user.id

	end

	def logout
		puts "aaaa"
		session[:user_id] = nil
		puts "aaa"
		redirect_to root_path
	end

end



