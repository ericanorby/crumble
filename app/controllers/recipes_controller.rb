class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe.cost_per_serving = @recipe.total_cost / @recipe.servings
    @ingredients = @recipe.ingredients.all
    total_calories = []
    @ingredients.each do |ingredient|
      total_calories << ingredient.calories
    end
    @recipe.cal_per_serving = total_calories.sum / @recipe.servings
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.author = current_user.email
    @recipe.save
    redirect_to recipe_path(@recipe)
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  def add
    @recipe = Recipe.find(params[:id])
    current_user.favorites.create(recipe: @recipe)
    flash[:notice] = "Added to your meal box!"
    redirect_to recipe_path(@recipe)
  end

  def remove
    @recipe = Recipe.find(params[:id])
    @fav = current_user.favorites.find_by(recipe: @recipe)
    @fav.destroy
    redirect_to '/recipe_box'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :photo_url, :servings, :total_cost, :difficulty, :directions)
  end

end
