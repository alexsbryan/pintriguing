class RootController < ApplicationController
  def index
    @pins_on_boards = BoardAssignment.order(:created_at).includes([{:board => :owner}, :pin]).paginate(:page => params[:page], :per_page =>5)
  end

  def root

  end
end
