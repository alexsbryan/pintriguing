class RootController < ApplicationController
  def index
    @boards = Board.order("Random()").includes(:pins)
  end
end
