class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.name = @category.name.titleize
    if @category.save
      redirect_to root_path
    else
      render 'admin/categories/new'
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

end
