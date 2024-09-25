class StaticPagesController < ApplicationController
  skip_before_action :require_login, only: %i[top]
  def top
    @random_num = Post.pluck(:id).sample
  end
end
