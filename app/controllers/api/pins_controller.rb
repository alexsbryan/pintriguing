class Api::PinsController < ApplicationController
  before_filter :authenticate_user!
 def index
   @pins = Pin.all
   render "index"
 end


 def create
   @board = Board.find(params[:board_id])
   @pin = @board.pins.build(pin_params)
   #@board.board_assignments.last().description = (params[:description])
   if @board.save
     #Sorry for the hack, probably could use an inverse of or something
     @pin.board_assignments.first().update_attributes(description: params[:description])
     render :json => @pin
   else
     render :json => @pin.errors.full_messages, :status => 422
   end
 end


 def show
   @pin = Pin.find(params[:id])
   render "show"
 end

 def edit
   @boards = Board.all
   @pin = Pin.find(params[:id])
 end


 def update
   @pin = Pin.find(params[:id])
   if @pin.update_attributes(pin_params)
     render "show"
   else
     render :json => @pin.errors.full_messages
   end
 end

 def destroy
   @pin = Pin.find(params[:id])
   @pin.destroy
   render :json => @pin
 end

 private

 def pin_params
   params.permit(:title, :url, :img_url)
 end
end
