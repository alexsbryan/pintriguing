class Api::CategoriesController < ApplicationController
    before_filter :authenticate_user!

    def show
      params[:page] ||= 1
      @category = Category.find(params[:id])
      @pins_on_boards = @category.pins_on_boards.includes([{:board => :owner}, :pin]).page(params[:page])
      render "show"
    end

    def index
      @categories = Category.all
      render :json => @categories
    end



end
