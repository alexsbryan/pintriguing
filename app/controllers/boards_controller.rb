class BoardsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @boards = Board.includes(:pins)
  end

  def new
    @board = Board.new
    @categories = Category.all
  end


  def create
    @category = Category.find(params[:category][:id])
    @board = @category.boards.create(board_params)
    if @board.save
      redirect_to @board
    else
      flash.now[:errors] = @board.errors.full_messages
      render :new
    end
  end


  def show
    @board = Board.find(params[:id])
  end

  private

  def board_params
    params.require(:board).permit(:name, :description, :owner_id)
  end

end