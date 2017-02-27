class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
    @meal.cost_per_serving = @meal.total_cost / @meal.servings
    @ingredients = @meal.ingredients.all
    total_calories = []
    @ingredients.each do |ingredient|
      total_calories << ingredient.calories
    end
    @meal.cal_per_serving = total_calories.sum / @meal.servings
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.create(meal_params)
    redirect_to meal_path(@meal)
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.update(meal_params)
    redirect_to meal_path(@meal)
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to meals_path
  end

  def add
    @meal = Meal.find(params[:id])
    current_user.favorites.create(meal: @meal)
    redirect_to '/recipe_box'
  end

  def remove

  end

  private

  def meal_params
    params.require(:meal).permit(:name, :photo_url, :servings, :total_cost, :difficulty, :directions)
  end

end
