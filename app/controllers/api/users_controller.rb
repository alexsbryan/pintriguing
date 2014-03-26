class Api::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user.boards.empty?
      @user.boards.create({:name => '*'})

    end
    @boards = Board.where(:owner_id => params[:id]).includes(:owner, {:board_assignments=> :pin})
    render "show"
  end
end
