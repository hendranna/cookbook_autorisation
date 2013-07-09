class RecipesController < ApplicationController
  
  load_and_authorize_resource

  helper :cost
  def index
    @recipes = Recipe.all
  end
  def new
    @recipe = Recipe.new
  end
  def create

    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
    redirect_to(@recipe)
  else
    render 'new'
  end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
  def edit
    @recipe = Recipe.find(params[:id])
  end
  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update_attributes(params[:recipe])
    redirect_to(@recipe)
  else
    render "edit"
  end

  end
  def destroy
    recipe = Recipe.find(params[:id])
    recipe.delete
    redirect_to(recipes_path)
  end
end
