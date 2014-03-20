class UsersController < ApplicationController
   before_filter :authenticate_user!
  def show
    @user = User.find(params[:id])
    @boards = @user.boards.includes(:pins)
  end


  def index
    @users = User.all
  end
end
