class IngredientsController < ApplicationController

  load_and_authorize_resource
  
helper :cost
  def index
    @ingredients = Ingredient.all
  end
  
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(params[:ingredient])
    if @ingredient.save
      redirect_to(@ingredient)
    else
      render 'new'
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update_attributes(params[:ingredient])
      redirect_to(@ingredient)
    else
      render 'edit'
    end
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.delete
    redirect_to(ingredients_path)
  end
end
