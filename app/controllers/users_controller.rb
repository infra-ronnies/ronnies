class UsersController < ApplicationController
	protect_from_forgery :except => [:login]
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
    	redirect_to root_path
    end
	end

	def login
		@user = User.find_by(name: params[:name], password: params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
  	else
  		@name = params[:name]
      @password = params[:password]
    	redirect_to root_path
    end
	end

	def logout
		session[:user_id] = nil
		redirect_to root_path
	end

	def show
		puts @current_user.id
		
	end

end



