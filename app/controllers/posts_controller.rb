class PostsController < ApplicationController
  def index
  	@post = Post.new
  end

  def show
  end

  def edit
  end

private
    def post_params
        params.require(:post).permit(:title)
    end
end
