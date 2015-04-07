class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(category_params) # private method created previously.
    if @category.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
  end

  def delete
  end
  
  private 
  
  def category_params
    params.require(:category).permit(:name, :thumburl)
  end
end
