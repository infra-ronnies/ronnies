class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	@post = Post.new
  	@post.post_images.build
  	@a = params[:event_id]
  	 # @post = Post.new
    # 3.times { @post.post_images.build }
  end

  def create
	post = Post.new(post_params)
	# post.user_id = current_user.id
	post.event_id = params[:event_id]
	post.save
	redirect_to event_posts_path(post.event_id)
  end

  def show
  	@post = Post.find_by(params[:id])
  	# @user = User.find_by(id: @post.user_id)
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	post = Post.find(params[:id])
    post.update(post_params)
    redirect_to event_posts_path(post.event_id)
  end

  def destroy
  	post = Post.find(params[:id])
    post.destroy
    redirect_to event_posts_path(post.event_id)
  end

private
    def post_params
        params.require(:post).permit(:title,
        						     :post_date,
        						     :event_id,
        						     post_images_images: [])
    end


end
