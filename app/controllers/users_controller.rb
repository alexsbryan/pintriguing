class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @boards = @user.boards.includes(:pins)
  end


  def index
    @users = User.all
  end
end
