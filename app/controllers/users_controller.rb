class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :index]
  before_action :correct_user,  only: [:show]
  
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @post = Post.new(user_id: @user.id)
    @posts = Post.page(params[:page])
  end
   
  #正しいユーザー以外をはじく
  def correct_user
    @user = User.find(params[:id])
    redirect_to(boards_path) unless @user == current_user
  end
 
end
