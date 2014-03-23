class Api::PinsOnBoardsController < ApplicationController
  before_filter :authenticate_user!
  def index
      @pins_on_boards = BoardAssignment.order(:created_at).includes([{:board => :owner}, :pin]).paginate(:page => params[:page], :per_page =>20)
      render "index"
    end

    def show
      @pin_on_board = BoardAssignment.find(params[:id])
      render "show"
    end

    def create
      ##This is the process of repinning an existing pin
      board = Board.find(params[:pin_on_board][:board_id])

      # check if board being pinned to is own board
      if board.user.id == current_user.id
        @pin_on_board = BoardAssignment.new(pin_on_board_params)
        if @pin_on_board.save
          render "show"
        else
          render :json => @pin_on_board.errors.full_messages, :status => 422
        end
      else
        render :json => ["You can't pin on this board"]
      end
    end

    def update
      @pin_on_board = BoardAssignment.find(params[:id])
      if @pin_on_board.update_attributes(pin_on_board_params)
        render "show"
      else
        render :json => @boards_pin.errors.full_messages
      end
    end

    def destroy
      @pin_on_board = BoardAssignment.find(params[:id])
      @pin_on_board.destroy
      render :json => @pin_on_board
    end

    def pin_on_board_params
      params.require(:pin_on_board).include(:board_id, :pin_id)
    end
end
