class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
    @ingredients = @meal.ingredients.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.create(meal_params)
    redirect_to meal_path(@meal)
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :photo_url, :servings, :total_cost, :difficulty, :directions)
  end

end
