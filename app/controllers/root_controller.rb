class RootController < ApplicationController
  def index
    @pins_on_board = BoardAssignment.order("Random()").includes([{:board => :owner}, :pin])
  end
end
