class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.order(:name)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)

    if @recipe.save
      redirect_to recipes_url, notice: "Recipe added"

    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :diet_type, :protein, :cook_method, :prepare_time, :cook_time)
  end

end
