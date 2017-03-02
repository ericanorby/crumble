class RecipesController < ApplicationController

  before_action :authenticate_user!, except: [:welcome]

  def welcome
    if current_user
      redirect_to recipes_path
    end
  end

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
    @recipe.author = current_user.username
    @recipe.save
    redirect_to recipe_path(@recipe)
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    flash[:notice] = "Recipe updated successfully!"
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
    flash[:notice] = "Added to your recipe box!"
    redirect_to recipe_path(@recipe)
  end

  def remove
    @recipe = Recipe.find(params[:id])
    @fav = current_user.favorites.find_by(recipe: @recipe)
    @fav.destroy
    flash[:notice] = "Removed from your recipe box."
    redirect_to recipe_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :web_source, :photo_url, :servings, :total_cost, :difficulty, :directions)
  end

end
