class CategoriesController < ApplicationController
  before_filter :authenticate_user!

  def show
    @category = Category.find(params[:id])
    @boards = @category.boards.includes(:pins)
  end

end
