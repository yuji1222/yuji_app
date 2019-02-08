class PostsController < ApplicationController
  def create
    post = Post.new(post_params)
    post.save
    flash[:notice] = 'ナイスウンチ'
  end

  def destroy
  end
  
  private
  
  def post_params
    params.require(:post).permit(:user_id, :color, :created_at)
  end
end
