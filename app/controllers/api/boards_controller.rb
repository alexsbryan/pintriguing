class Api::BoardsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @boards = Board.where(:owner_id => current_user.id).includes(:owner, {:board_assignments=> :pin})
    render "index"
  end


  def show
    # @pin = Pin.new
#     @board = Board.find(params[:id])
    # @boards = Board.all.where(:owner_id => current_user.id)
    @pins_on_board = BoardAssignment.where(:board_id => params[:id]).includes([{:board => :owner}, :pin])
    render "show"
  end

  def create
    @category = Category.find(params[:category][:id])
    @board = @category.boards.create(board_params)
    #added in case I can't get current user from backbone
    @board.owner_id = current_user.id
    if @board.save
      render "show"
    else
     render :json => @board.errors.full_messages
    end
  end


  def update
    @board = Board.find(params[:id])
    if @board.update_attributes(board_params)
      render "show"
    else
      render :json => @board.errors.full_messages
    end
  end


  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    render :json => @board
  end


  private

  def board_params
    params.require(:board).permit(:name, :description, :owner_id)
  end
end

