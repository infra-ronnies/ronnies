class UsersController < ApplicationController
	# before_action :forbid_login_user, {only: [:create]}

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

	def login
		@user = User.find_by(name: params[:name], password: params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end
    redirect_to root_path
  #   else
  #     @name = params[:name]
  #     @password = params[:password]
  #     render root_path
		# end
	end

	def logout
		puts "aaaa"
		session[:user_id] = nil
		puts "aaa"
		redirect_to root_path
	end

end



