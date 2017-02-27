class IngredientsController < ApplicationController

  def show
    @meal = Meal.find(params[:meal_id])
    @ingredient = @meal.ingredients.find(params[:id])
  end

  def new
    @meal = Meal.find(params[:meal_id])
    @ingredient = @meal.ingredients.new
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @ingredient = @meal.ingredients.create(ingredient_params)
    redirect_to meal_path(@meal)
  end

  def edit
    @meal = Meal.find(params[:meal_id])
    @ingredients = @meal.ingredients.find(params[:id])
  end

  def destroy
    @meal = Meal.find(params[:meal_id])
    @ingredient = @meal.ingredients.find(params[:id])
    @ingredient.destroy
    redirect_to meal_path(@meal)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :amount, :calories)
  end

end
