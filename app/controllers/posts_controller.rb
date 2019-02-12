class PostsController < ApplicationController
  
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to user_path(current_user), flash: { notice: "ナイスウンチ" }
  end

  def destroy
    post = Post.find(params[:id])
    post.delete
    redirect_to user_path(current_user), flash: { notice: "削除されました" }
  end
  
  private
  
  def post_params
    params.require(:post).permit(:user_id, :color, :created_at)
  end
end
