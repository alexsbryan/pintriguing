class RootController < ApplicationController
  def index
    @pins_on_boards = BoardAssignment.order(:created_at).includes([{:board => :owner}, :pin]).page(params[:page])

  end
end
