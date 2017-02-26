class IngredientsController < ApplicationController

  def new
    @meal = Meal.find(params[:meal_id])
    @ingredient = @meal.ingredients.new
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @ingredient = @meal.ingredients.create(ingredient_params)
    redirect_to meal_path(@meal)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :amount, :measurement, :calories)
  end

end
