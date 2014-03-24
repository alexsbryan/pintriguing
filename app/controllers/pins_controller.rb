class PinsController < ApplicationController
   before_filter :authenticate_user!
  def index
    @pins = Pin.all
  end

  def new
    @pin = Pin.new
    @boards = Board.all.where(:owner_id => current_user.id)
  end

  def create
    @board = Board.find(params[:board][:id])
    @pin = @board.pins.create(pin_params)

    if @board.save
      redirect_to '#'
    else
      flash[:errors] = @board.errors.full_messages
      render :back
    end
  end


  def show
    @pin = Pin.find(params[:id])
  end

  def edit
    @pin = Pin.find(params[:id])
  end


  def update
    @pin = Pin.find(params[:id])
    if @pin.update_attributes(pin_params)
      redirect_to @pin
    else
      flash[:errors] = @board.errors.full_messages
      render :edit
    end
  end

  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    render :index
  end

  private

  def pin_params
    params.require(:pin).permit(:title, :url, :img_url)
  end
end
