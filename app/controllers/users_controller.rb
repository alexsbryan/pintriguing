class UsersController < ApplicationController
  before_action :require_signed_in!, :only => [:show, :edit]
    before_action :require_signed_out!, :only => [:create, :new]

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)

      if @user.save
        sign_in(@user)
        redirect_to user_url(@user)
      else
        flash.now[:errors] = @user.errors.full_messages
        render :new
      end
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])

      if @user.update_attributes(user_params)
        redirect_to @user
      else
        flash.now[:errors] = @user.errors.full_messages
        render :edit
      end
    end

    def show
      if params.include?(:id)
        @user = User.find(params[:id])
      else
        redirect_to user_url(current_user)
      end
    end

    private

  def user_params
    params.require(:user).permit(:email,:password,:first_name,:last_name)
  end
end
