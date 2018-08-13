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
      flash[:notice] = "Recipe saved"
      redirect_to recipes_url

    else
      flash[:error] = "The recipe was not saved"
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :diet_type, :protein, :cook_method, :prepare_time, :cook_time)
  end

end
