class Api::UsersController < ApplicationController
  def show
    @boards = Board.where(:owner_id => params[:id]).includes(:owner, {:board_assignments=> :pin})
    @user = @boards.first.owner
    render "show"
  end
end
