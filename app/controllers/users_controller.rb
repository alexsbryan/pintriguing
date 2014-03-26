class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, :only=>[:guest]
  skip_before_action :authenticate_user!, :only=>[:guest]
  def show
    @user = User.find(params[:id])
    @boards = @user.boards.includes(:pins)
  end

  def guest
    guest_user
    redirect_to "/#"
  end


  def index
    @users = User.all
  end
end
