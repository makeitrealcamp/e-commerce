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
      redirect_to admin_categories_path
      flash[:success] = "La Categoría se creo exitosamente"
    else
      flash[:danger] = "Error al crear la Categoría"
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to admin_categories_path
      flash[:success] = "La Categoría se edito exitosamente"
    else
      flash[:danger] = "Error al editar la Categoría"
      render 'edit'
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

end
