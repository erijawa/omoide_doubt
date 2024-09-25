class PostsController < ApplicationController
  skip_before_action :require_login, only: %i[show replace]
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
    @post = Post.find(params[:id])
  end

  def replace
    @post = Post.find(params[:id])
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end

  private

  def post_params
    params.require(:post).permit(:body, :comment, :answer, :post_image)
  end
end
