class MealboxsController < ApplicationController

  def index
    @favorites = current_user.favorites.all
  end
end
