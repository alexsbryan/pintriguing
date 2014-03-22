class CategoriesController < ApplicationController
  before_filter :authenticate_user!

  def show
    @category = Category.find(params[:id])
    @pins_on_boards = @category.pins_on_boards.includes([{:board => :owner}, :pin]).page(params[:page])
  end

end
