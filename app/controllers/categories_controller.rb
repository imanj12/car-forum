class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    if Category.where(id: params[:id]).exists?
      @category = Category.find(params[:id])
    else
      redirect_to categories_path
    end
  end
end
