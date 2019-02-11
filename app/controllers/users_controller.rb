class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :index]
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @post = Post.new(user_id: @user.id)
  end
   
 
end
