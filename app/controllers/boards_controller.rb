class BoardsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @boards = Board.where(:owner_id => current_user.id).includes(:pins)
  end

  def new
    @board = Board.new
    @categories = Category.all
  end


  def create
    @category = Category.find(params[:category][:id])
    @board = @category.boards.create(board_params)
    if @board.save
      redirect_to user_board_url(current_user, @board)
    else
      flash.now[:errors] = @board.errors.full_messages
      render :new
    end
  end


  def show
    @pin = Pin.new
    @board = Board.find(params[:id])
    # @boards = Board.all.where(:owner_id => current_user.id)
    @pins_on_board = BoardAssignment.where(:board_id => params[:id]).order("Random()").includes([{:board => :owner}, :pin])
  end

  private

  def board_params
    params.require(:board).permit(:name, :description, :owner_id)
  end

end
