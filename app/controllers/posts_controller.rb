class PostsController < ApplicationController
  skip_before_action :require_login, only: %i[show new create]
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    random_num = Post.pluck(:id).sample
    @random_post = Post.find(random_num)
    @theme = Theme.find(@random_post.theme_id)
  end

  private

  def post_params
    params.require(:post).permit(:body, :comment, :answer)
  end
end
