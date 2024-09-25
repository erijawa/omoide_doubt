class PostsController < ApplicationController
  skip_before_action :require_login, only: %i[show]
  def new
    @post = Post.new
  end
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path, success: "思い出を投稿しました"
    else
      flash.now[:danger] = '投稿に失敗しました'
      render :new, status: :unprocessable_entity
    end
  end

  def show
    random_num = Post.pluck(:id).sample
    @random_post = Post.find(random_num)
    @theme = Theme.find(@random_post.themes_id)
  end

  private

  def post_params
    params.require(:post).permit(:body, :comment, :answer, :themes_id)
  end
end
